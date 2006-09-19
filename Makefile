PACKAGE    = poppler-data
VERSION    = 0.1
distdir    = $(PACKAGE)-$(VERSION)
prefix     = /usr/local
datadir    = $(prefix)/share
pkgdatadir = $(datadir)/poppler

all :

install :
	install -d -m 0755 $(DESTDIR)$(pkgdatadir)/cidToUnicode
	install -m 0644 $(cid-to-unicode-files) $(DESTDIR)$(pkgdatadir)/cidToUnicode
	install -d -m 0755 $(DESTDIR)$(pkgdatadir)/nameToUnicode
	install -m 0644 $(name-to-unicode-files) $(DESTDIR)$(pkgdatadir)/nameToUnicode
	install -d -m 0755 $(DESTDIR)$(pkgdatadir)/unicodeMap
	install -m 0644 $(unicode-map-files) $(DESTDIR)$(pkgdatadir)/unicodeMap

	for f in $(cmap-files); do					    \
		install -d -m 0755 $(DESTDIR)$(pkgdatadir)/$$(dirname $$f); \
		install -m 0644 $$f $(DESTDIR)$(pkgdatadir)/$$f;	    \
	done

distdir : $(DISTFILES)
	rm -rf $(distdir)
	mkdir $(distdir)
	for f in $(DISTFILES); do			\
		mkdir -p $(distdir)/$$(dirname $$f);	\
		cp $$f $(distdir)/$$f;			\
	done

dist : distdir
	tar cfz $(distdir).tar.gz $(distdir)
	rm -rf $(distdir)

clean :
	rm -rf $(distdir)

unicode-map-files =				\
	unicodeMap/GBK				\
	unicodeMap/Big5				\
	unicodeMap/Shift-JIS			\
	unicodeMap/ISO-2022-KR			\
	unicodeMap/KOI8-R			\
	unicodeMap/EUC-CN			\
	unicodeMap/TIS-620			\
	unicodeMap/EUC-JP			\
	unicodeMap/ISO-2022-CN			\
	unicodeMap/Big5ascii			\
	unicodeMap/ISO-2022-JP			\

cmap-files =					\
	cMap/Adobe-Korea1/KSC-EUC-V		\
	cMap/Adobe-Korea1/UniKS-UCS2-H		\
	cMap/Adobe-Korea1/KSC-Johab-V		\
	cMap/Adobe-Korea1/KSCpc-EUC-H		\
	cMap/Adobe-Korea1/KSCpc-EUC-UCS2	\
	cMap/Adobe-Korea1/UniKS-UCS2-V		\
	cMap/Adobe-Korea1/KSCpc-EUC-UCS2C	\
	cMap/Adobe-Korea1/Adobe-Korea1-UCS2	\
	cMap/Adobe-Korea1/UniKS-UTF8-H		\
	cMap/Adobe-Korea1/Adobe-Korea1-2	\
	cMap/Adobe-Korea1/Adobe-Korea1-0	\
	cMap/Adobe-Korea1/KSCms-UHC-V		\
	cMap/Adobe-Korea1/UniKS-UTF16-H		\
	cMap/Adobe-Korea1/KSC-EUC-H		\
	cMap/Adobe-Korea1/Adobe-Korea1-1	\
	cMap/Adobe-Korea1/KSCms-UHC-H		\
	cMap/Adobe-Korea1/KSCms-UHC-UCS2	\
	cMap/Adobe-Korea1/KSCms-UHC-HW-V	\
	cMap/Adobe-Korea1/UniKS-UTF8-V		\
	cMap/Adobe-Korea1/KSC-H			\
	cMap/Adobe-Korea1/KSC-Johab-H		\
	cMap/Adobe-Korea1/KSCms-UHC-HW-H	\
	cMap/Adobe-Korea1/KSCpc-EUC-V		\
	cMap/Adobe-Korea1/KSC-V			\
	cMap/Adobe-Korea1/UniKS-UTF16-V		\
	cMap/Adobe-Japan1/Katakana		\
	cMap/Adobe-Japan1/Add-RKSJ-V		\
	cMap/Adobe-Japan1/Add-H			\
	cMap/Adobe-Japan1/UniJIS-UCS2-HW-V	\
	cMap/Adobe-Japan1/RKSJ-H		\
	cMap/Adobe-Japan1/UniJIS-UCS2-HW-H	\
	cMap/Adobe-Japan1/90pv-RKSJ-UCS2	\
	cMap/Adobe-Japan1/EUC-H			\
	cMap/Adobe-Japan1/90msp-RKSJ-V		\
	cMap/Adobe-Japan1/90msp-RKSJ-H		\
	cMap/Adobe-Japan1/Adobe-Japan1-2	\
	cMap/Adobe-Japan1/Adobe-Japan1-0	\
	cMap/Adobe-Japan1/78ms-RKSJ-V		\
	cMap/Adobe-Japan1/83pv-RKSJ-H		\
	cMap/Adobe-Japan1/RKSJ-V		\
	cMap/Adobe-Japan1/78-H			\
	cMap/Adobe-Japan1/78-EUC-H		\
	cMap/Adobe-Japan1/WP-Symbol		\
	cMap/Adobe-Japan1/78ms-RKSJ-H		\
	cMap/Adobe-Japan1/78-RKSJ-H		\
	cMap/Adobe-Japan1/78-EUC-V		\
	cMap/Adobe-Japan1/90pv-RKSJ-H		\
	cMap/Adobe-Japan1/Add-RKSJ-H		\
	cMap/Adobe-Japan1/UniJIS-UTF16-V	\
	cMap/Adobe-Japan1/V			\
	cMap/Adobe-Japan1/90ms-RKSJ-V		\
	cMap/Adobe-Japan1/Ext-H			\
	cMap/Adobe-Japan1/H			\
	cMap/Adobe-Japan1/78-RKSJ-V		\
	cMap/Adobe-Japan1/UniJIS-UTF16-H	\
	cMap/Adobe-Japan1/90pv-RKSJ-UCS2C	\
	cMap/Adobe-Japan1/Ext-RKSJ-V		\
	cMap/Adobe-Japan1/Hiragana		\
	cMap/Adobe-Japan1/UniJISPro-UCS2-V	\
	cMap/Adobe-Japan1/UniJIS-UTF8-H		\
	cMap/Adobe-Japan1/Adobe-Japan1-4	\
	cMap/Adobe-Japan1/90ms-RKSJ-UCS2	\
	cMap/Adobe-Japan1/UniJIS-UTF8-V		\
	cMap/Adobe-Japan1/Adobe-Japan1-1	\
	cMap/Adobe-Japan1/UniJISPro-UCS2-HW-V	\
	cMap/Adobe-Japan1/Add-V			\
	cMap/Adobe-Japan1/Adobe-Japan1-3	\
	cMap/Adobe-Japan1/NWP-V			\
	cMap/Adobe-Japan1/90pv-RKSJ-V		\
	cMap/Adobe-Japan1/EUC-V			\
	cMap/Adobe-Japan1/Roman			\
	cMap/Adobe-Japan1/78-V			\
	cMap/Adobe-Japan1/Ext-RKSJ-H		\
	cMap/Adobe-Japan1/UniJIS-UCS2-V		\
	cMap/Adobe-Japan1/Adobe-Japan1-UCS2	\
	cMap/Adobe-Japan1/UniJISPro-UTF8-V	\
	cMap/Adobe-Japan1/Ext-V			\
	cMap/Adobe-Japan1/UniJIS-UCS2-H		\
	cMap/Adobe-Japan1/NWP-H			\
	cMap/Adobe-Japan1/Hankaku		\
	cMap/Adobe-Japan1/90ms-RKSJ-H		\
	cMap/Adobe-CNS1/HKdlb-B5-V		\
	cMap/Adobe-CNS1/UniCNS-UCS2-V		\
	cMap/Adobe-CNS1/HKscs-B5-V		\
	cMap/Adobe-CNS1/ETen-B5-H		\
	cMap/Adobe-CNS1/B5pc-V			\
	cMap/Adobe-CNS1/ETen-B5-UCS2		\
	cMap/Adobe-CNS1/Adobe-CNS1-3		\
	cMap/Adobe-CNS1/CNS-EUC-V		\
	cMap/Adobe-CNS1/CNS2-V			\
	cMap/Adobe-CNS1/ETenms-B5-H		\
	cMap/Adobe-CNS1/HKscs-B5-H		\
	cMap/Adobe-CNS1/B5pc-UCS2C		\
	cMap/Adobe-CNS1/ETenms-B5-V		\
	cMap/Adobe-CNS1/HKm314-B5-V		\
	cMap/Adobe-CNS1/HKm471-B5-H		\
	cMap/Adobe-CNS1/B5pc-H			\
	cMap/Adobe-CNS1/UniCNS-UTF8-H		\
	cMap/Adobe-CNS1/HKdla-B5-V		\
	cMap/Adobe-CNS1/B5-H			\
	cMap/Adobe-CNS1/Adobe-CNS1-0		\
	cMap/Adobe-CNS1/HKdlb-B5-H		\
	cMap/Adobe-CNS1/HKm471-B5-V		\
	cMap/Adobe-CNS1/Adobe-CNS1-2		\
	cMap/Adobe-CNS1/HKm314-B5-H		\
	cMap/Adobe-CNS1/B5pc-UCS2		\
	cMap/Adobe-CNS1/CNS1-V			\
	cMap/Adobe-CNS1/HKgccs-B5-H		\
	cMap/Adobe-CNS1/UniCNS-UTF16-H		\
	cMap/Adobe-CNS1/ETHK-B5-V		\
	cMap/Adobe-CNS1/UniCNS-UTF16-V		\
	cMap/Adobe-CNS1/HKgccs-B5-V		\
	cMap/Adobe-CNS1/HKdla-B5-H		\
	cMap/Adobe-CNS1/Adobe-CNS1-1		\
	cMap/Adobe-CNS1/UniCNS-UTF8-V		\
	cMap/Adobe-CNS1/ETHK-B5-H		\
	cMap/Adobe-CNS1/CNS2-H			\
	cMap/Adobe-CNS1/Adobe-CNS1-UCS2		\
	cMap/Adobe-CNS1/UniCNS-UCS2-H		\
	cMap/Adobe-CNS1/B5-V			\
	cMap/Adobe-CNS1/CNS-EUC-H		\
	cMap/Adobe-CNS1/ETen-B5-V		\
	cMap/Adobe-CNS1/CNS1-H			\
	cMap/Adobe-GB1/GB-V			\
	cMap/Adobe-GB1/Adobe-GB1-3		\
	cMap/Adobe-GB1/GBK-EUC-V		\
	cMap/Adobe-GB1/GBKp-EUC-H		\
	cMap/Adobe-GB1/UniGB-UCS2-H		\
	cMap/Adobe-GB1/GBK2K-V			\
	cMap/Adobe-GB1/GBpc-EUC-H		\
	cMap/Adobe-GB1/UniGB-UTF8-V		\
	cMap/Adobe-GB1/GBT-V			\
	cMap/Adobe-GB1/UniGB-UTF16-V		\
	cMap/Adobe-GB1/GBT-EUC-H		\
	cMap/Adobe-GB1/GBK2K-H			\
	cMap/Adobe-GB1/GB-EUC-V			\
	cMap/Adobe-GB1/GBTpc-EUC-H		\
	cMap/Adobe-GB1/GBpc-EUC-UCS2		\
	cMap/Adobe-GB1/UniGB-UTF16-H		\
	cMap/Adobe-GB1/UniGB-UCS2-V		\
	cMap/Adobe-GB1/GBKp-EUC-V		\
	cMap/Adobe-GB1/GB-H			\
	cMap/Adobe-GB1/GBK-EUC-H		\
	cMap/Adobe-GB1/GBpc-EUC-UCS2C		\
	cMap/Adobe-GB1/Adobe-GB1-UCS2		\
	cMap/Adobe-GB1/GBT-H			\
	cMap/Adobe-GB1/Adobe-GB1-4		\
	cMap/Adobe-GB1/GBpc-EUC-V		\
	cMap/Adobe-GB1/Adobe-GB1-2		\
	cMap/Adobe-GB1/GBT-EUC-V		\
	cMap/Adobe-GB1/GBK-EUC-UCS2		\
	cMap/Adobe-GB1/Adobe-GB1-1		\
	cMap/Adobe-GB1/GBTpc-EUC-V		\
	cMap/Adobe-GB1/UniGB-UTF8-H		\
	cMap/Adobe-GB1/GB-EUC-H			\
	cMap/Adobe-GB1/Adobe-GB1-0		\

name-to-unicode-files =				\
	nameToUnicode/Thai			\
	nameToUnicode/Bulgarian			\

cid-to-unicode-files =				\
	cidToUnicode/Adobe-GB1			\
	cidToUnicode/Adobe-CNS1			\
	cidToUnicode/Adobe-Japan1		\
	cidToUnicode/Adobe-Korea1

DISTFILES =					\
	Makefile				\
	README					\
	COPYING					\
	$(unicode-map-files)			\
	$(cmap-files)				\
	$(name-to-unicode-files)		\
	$(cid-to-unicode-files)
