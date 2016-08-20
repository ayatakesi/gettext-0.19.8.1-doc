# 使い方
# 	html(単一、複数)、infoを作成する場合は、make
# 	全部(pdf、tarを含む)を作成する場合は、make && make pdf && make tar

# 必要なもの
#
# po4a(https://po4a.alioth.debian.org/index.php.ja)が必要です
# 理由:	翻訳前のtexiとpoファイルから翻訳済みのtexiを生成するため
#
# texinfo(https://www.gnu.org/software/texinfo/)が必要です
# 理由:	texiファイルからhtml、infoを生成するため
#
# tar(https://www.gnu.org/software/tar/)が必要です(オプション)
# 理由:		texiファイルをアーカイブするため
# コンパイル:	makeの後にmake tar
#
# texlive(http://www.tug.org/texlive/)が必要です(オプション)
# 理由:		texiファイルから日本語PDFを作成するため
# コンパイル:	makeの後にmake pdf

.PHONY: clean

# デフォルトは単一html、分割html、info
all: single-html multi-html info

# 単一html用のターゲット
single-html: gettext.html

# 分割html用のターゲット
# html/*.htmlが生成されます
multi-html: html/index.html

# info用のターゲット
info: gettext1981-ja.info

# pdf用のターゲット(オプション)
pdf: gettext.pdf

# tar.gz用のターゲット(オプション)
tar: gettext.texis.tar.gz

TEXIS := \
autopoint.texi \
fdl.texi \
gettext.texi \
gettextize.texi \
gpl.texi \
iso-3166.texi \
iso-639-2.texi \
iso-639.texi \
lgpl.texi \
msgattrib.texi \
msgcat.texi \
msgcmp.texi \
msgcomm.texi \
msgconv.texi \
msgen.texi \
msgexec.texi \
msgfilter.texi \
msgfmt.texi \
msggrep.texi \
msginit.texi \
msgmerge.texi \
msgunfmt.texi \
msguniq.texi \
rt-envsubst.texi \
rt-gettext.texi \
rt-ngettext.texi \
version.texi \
xgettext.texi

clean:
	rm -f *.bak
	rm -f *.texi
	rm -f gettext.html
	rm -fR html/
	rm -f gettext183-ja.info
	rm -f gettext.pdf
	rm -f gettext.texis.tar.gz
	rm -fR gettext.texis/

%.texi:
	if [ -f $@.po ]; \
	then \
		po4a-translate -f texinfo -k 0 -M utf8 -m original_texis/$@ -p $@.po -l $@; \
	else \
		cp -pf original_texis/$@ $@; \
	fi; \

gettext.html: $(TEXIS)
	./translate_0.19.8.1.sh
	texi2any --force --set-customization-variable TEXI2HTML=1 -D makeinfo gettext.texi

html/index.html: $(TEXIS)
	./translate_0.19.8.1.sh
	makeinfo -o html/ --html gettext.texi

gettext1981-ja.info: $(TEXIS)
	./translate_0.19.8.1.sh
	makeinfo --no-split -o gettext1981-ja.info gettext.texi

gettext.pdf: $(TEXIS)
	./translate_0.19.8.1.sh
	TEX=ptex texi2dvi -c gettext.texi
	dvipdfmx gettext.dvi
	rm -f gettext.dvi

gettext.texis.tar.gz: $(TEXIS)
	./translate_0.19.8.1.sh
	if [ ! -d gettext.texis ]; \
	then \
		mkdir gettext.texis/; \
	fi

	cp -fp *.texi gettext.texis
	tar cvfz ./gettext.texis.tar.gz ./gettext.texis
