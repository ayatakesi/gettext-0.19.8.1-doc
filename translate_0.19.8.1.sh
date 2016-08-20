#!/bin/sh

sed "
s#@chapter Introduction#@chapter イントロダクション#;
s#@section The Purpose of GNU @code{gettext}#@section GNU @code{gettext}の目的#;
s#@section I18n, L10n, and Such#@section i18n、l10n、などなど#;
s#@section Aspects in Native Language Support#@section ネイティブ言語サポートの側面#;
s#@section Files Conveying Translations#@section 翻訳を伝達するファイル#;
s#@section Overview of GNU @code{gettext}#@section GNU @code{gettext}の概要#;
s#@chapter The User's View#@chapter ユーザーの視点#;
s#@section Operating System Installation#@section オペレーティングシステムのインストール#;
s#@section Setting the Locale Used by GUI Programs#@section GUIプログラムを使用したlocaleのセッティング#;
s#@section Setting the Locale through Environment Variables#@section 環境変数を通じたlocaleのセッティング#;
s#@subsection Locale Names#@subsection locale名#;
s#@subsection Locale Environment Variables#@subsection localeの環境変数#;
s#@subsection Specifying a Priority List of Languages#@subsection 言語の優先リストを指定する#;
s#@section Installing Translations for Particular Programs#@section 特定のプログラムにたいして翻訳をインストールする#;
s#@chapter The Format of PO Files#@chapter POファイルのフォーマット#;
s#@chapter Preparing Program Sources#@chapter プログラムソースの準備#;
s#@section Importing the @code{gettext} declaration#@section @code{gettext}宣言のインポート#;
s#@section Triggering @code{gettext} Operations#@section @code{gettext}処理のトリガー#;
s#@section Preparing Translatable Strings#@section 翻訳可能な文字列の準備#;
s#@section How Marks Appear in Sources#@section ソース内でマークはどのように見えるか#;
s#@section Marking Translatable Strings#@section 翻訳可能文字列のマーク#;
s#@section Special Comments preceding Keywords#@section キーワードの前の特別なコメント#;
s#@section Special Cases of Translatable Strings#@section 翻訳可能文字列の特別なケース#;
s#@section Letting Users Report Translation Bugs#@section 翻訳バグの報告をユーザーに奨励する#;
s#@section Marking Proper Names for Translation#@section 翻訳にたいして正確な名前をマークする#;
s#@section Preparing Library Sources#@section ライブラリーソースの準備#;
s#@chapter Making the PO Template File#@chapter POテンプレートファイルのマーク#;
s#@section Invoking the @code{xgettext} Program#@section @code{xgettext}プログラムの呼び出し#;
s#@chapter Creating a New PO File#@chapter 新しいPOファイルの作成#;
s#@section Invoking the @code{msginit} Program#@section @code{msginit}プログラムの呼び出し#;
s#@section Filling in the Header Entry#@section ヘッダーエントリーを入力する#;
s#@chapter Updating Existing PO Files#@chapter 既存のPOファイルの更新#;
s#@section Invoking the @code{msgmerge} Program#@section @code{msgmerge}プログラムの呼び出し#;
s#@chapter Editing PO Files#@chapter POファイルの編集#;
s#@section KDE's PO File Editor#@section KDEのPOファイルエディター#;
s#@section GNOME's PO File Editor#@section GNOMEのPOファイルエディター#;
s#@section Emacs's PO File Editor#@section EmacsのPOファイルエディター#;
s#@subsection Completing GNU @code{gettext} Installation#@subsection GNU @code{gettext}のインストールを完了する#;
s#@subsection Main PO mode Commands#@subsection 主要なPOモードのコマンド#;
s#@subsection Entry Positioning#@subsection エントリーの決定#;
s#@subsection Normalizing Strings in Entries#@subsection エントリー内の文字列の正規化#;
s#@subsection Translated Entries#@subsection 翻訳済みのエントリー#;
s#@subsection Fuzzy Entries#@subsection fuzzyエントリー#;
s#@subsection Untranslated Entries#@subsection 未翻訳エントリー#;
s#@subsection Obsolete Entries#@subsection 陳腐化したエントリー#;
s#@subsection Modifying Translations#@subsection 翻訳の修正#;
s#@subsection Modifying Comments#@subsection コメントの修正#;
s#@subsection Details of Sub Edition#@subsection サブエディションの詳細#;
s#@subsection C Sources Context#@subsection Cソースのコンテキスト#;
s#@subsection Consulting Auxiliary PO Files#@subsection 追加POファイルを調べる#;
s#@section Using Translation Compendia#@section 翻訳compendiaの使用#;
s#@subsection Creating Compendia#@subsection compendiaの作成#;
s#@subsubsection Concatenate PO Files#@subsubsection POファイルの連結#;
s#@subsubsection Extract a Message Subset from a PO File#@subsubsection POファイルからのメッセージサブセットの抽出#;
s#@subsection Using Compendia#@subsection compendiaの使用#;
s#@subsubsection Initialize a New Translation File#@subsubsection 新しい翻訳ファイルの初期化#;
s#@subsubsection Update an Existing Translation File#@subsubsection 既存の翻訳ファイルの更新#;
s#@chapter Manipulating PO Files#@chapter POファイルの操作#;
s#@section Invoking the @code{msgcat} Program#@section @code{msgcat}プログラムの呼び出し#;
s#@section Invoking the @code{msgconv} Program#@section @code{msgconv}プログラムの呼び出し#;
s#@section Invoking the @code{msggrep} Program#@section @code{msggrep}プログラムの呼び出し#;
s#@section Invoking the @code{msgfilter} Program#@section @code{msgfilter}プログラムの呼び出し#;
s#@section Invoking the @code{msguniq} Program#@section @code{msguniq}プログラムの呼び出し#;
s#@section Invoking the @code{msgcomm} Program#@section @code{msgcomm}プログラムの呼び出し#;
s#@section Invoking the @code{msgcmp} Program#@section @code{msgcmp}プログラムの呼び出し#;
s#@section Invoking the @code{msgattrib} Program#@section @code{msgattrib}プログラムの呼び出し#;
s#@section Invoking the @code{msgen} Program#@section @code{msgen}プログラムの呼び出し#;
s#@section Invoking the @code{msgexec} Program#@section @code{msgexec}プログラムの呼び出し#;
s#@section Highlighting parts of PO files#@section POファイルの一部をハイライトする#;
s#@subsection The @code{--color} option#@subsection @code{--color}オプション#;
s#@subsection The environment variable @code{TERM}#@subsection 環境変数@code{TERM}#;
s#@subsection The @code{--style} option#@subsection @code{--style}オプション#;
s#@subsection Style rules for PO files#@subsection POファイルのスタイルルール#;
s#@subsection Customizing @code{less} for viewing PO files#@subsection POファイルを閲覧するために@code{less}をカスタマイズする#;
s#@section Writing your own programs that process PO files#@section POファイルを処理するプログラムを独自に記述する#;
s#@chapter Producing Binary MO Files#@chapter バイナリーのMOファイルの生成#;
s#@section Invoking the @code{msgfmt} Program#@section @code{msgfmt}プログラムの呼び出し#;
s#@section Invoking the @code{msgunfmt} Program#@section @code{msgunfmt}プログラムの呼び出し#;
s#@section The Format of GNU MO Files#@section GNU MOファイルのフォーマット#;
s#@chapter The Programmer's View#@chapter プログラマーの視点#;
s#@section About @code{catgets}#@section @code{catgets}について#;
s#@subsection The Interface#@subsection インターフェース#;
s#@subsection Problems with the @code{catgets} Interface?!#@subsection @code{catgets}インターフェースに関する問題点?!#;
s#@section About @code{gettext}#@section @code{gettext}について#;
s#@subsection Solving Ambiguities#@subsection あいまいざの解決#;
s#@subsection Locating Message Catalog Files#@subsection メッセージカタログファイルの配置#;
s#@subsection How to specify the output character set @code{gettext} uses#@subsection @code{gettext}が使用する出力文字セットの指定方法#;
s#@subsection Using contexts for solving ambiguities#@subsection あいまいさの解決のためにコンテキストを使用する#;
s#@subsection Additional functions for plural forms#@subsection 複数形(plural forms)にたいする追加の関数#;
s#@subsection Optimization of the \*gettext functions#@subsection \*gettext関数の最適化#;
s#@section Comparing the Two Interfaces#@section 2つのインターフェースの比較#;
s#@section Using libintl\.a in own programs#@section 独自のプログラム内でlibintl.aを使用する#;
s#@section Being a @code{gettext} grok#@section @code{gettext}を根底から理解する#;
s#@section Temporary Notes for the Programmers Chapter#@section プログラマの章についての一時的なメモ#;
s#@subsection Temporary - Two Possible Implementations#@subsection 一時的な情報 - 二つの実装#;
s#@subsection Temporary - About @code{catgets}#@subsection 一時的な情報 - @code{catgets}について#;
s#@subsection Temporary - Why a single implementation#@subsection 一時的な情報 - なぜ一つの実装なのか#;
s#@subsection Temporary - Notes#@subsection 一時的な情報 - ノート#;
s#@chapter The Translator's View#@chapter 翻訳者の視点#;
s#@section Introduction 0#@section イントロダクション0#;
s#@section Introduction 1#@section イントロダクション1#;
s#@section Discussions#@section 議論#;
s#@section Organization#@section 組織#;
s#@subsection Central Coordination#@subsection 中央による調整#;
s#@subsection National Teams#@subsection 国家チーム#;
s#@subsubsection Sub-Cultures#@subsubsection サブカルチャー#;
s#@subsubsection Organizational Ideas#@subsubsection 組織化へのアイディア#;
s#@subsection Mailing Lists#@subsection メーリングリスト#;
s#@section Information Flow#@section 情報の流れ#;
s#@section Translating plural forms#@section 複数形の翻訳#;
s#@section Prioritizing messages: How to determine which messages to translate first#@section メッセージの優先度: 最初に翻訳すべきメッセージを決める方法#;
s#@chapter The Maintainer's View#@chapter メンテナーの視点#;
s#@section Flat or Non-Flat Directory Structures#@section 非フラットなディレクトリー階層#;
s#@section Prerequisite Works#@section 前提となる作業#;
s#@section Invoking the @code{gettextize} Program#@section @code{gettextize}プログラムの呼び出し#;
s#@section Files You Must Create or Alter#@section 作成または変更しなければならないファイル#;
s#@subsection @file{POTFILES.in} in @file{po/}#@subsection @file{po/}内の@file{POTFILES.in}#;
s#@subsection @file{LINGUAS} in @file{po/}#@subsection @file{po/}内の@file{LINGUAS}#;
s#@subsection @file{Makevars} in @file{po/}#@subsection @file{po/}内の@file{Makevars}#;
s#@subsection Extending @file{Makefile} in @file{po/}#@subsection @file{po/}内の@file{Makefile}の拡張#;
s#@subsection @file{configure.ac} at top level#@subsection トップレベルの@file{configure.ac}#;
s#@subsection @file{config.guess}, @file{config.sub} at top level#@subsection トップレベルの@file{config.guess}、@file{config.sub}#;
s#@subsection @file{mkinstalldirs} at top level#@subsection トップレベルの@file{mkinstalldirs}#;
s#@subsection @file{aclocal.m4} at top level#@subsection トップレベルの@file{aclocal.m4}#;
s#@subsection @file{acconfig.h} at top level#@subsection トップレベルの@file{acconfig.h}#;
s#@subsection @file{config.h.in} at top level#@subsection トップレベルの@file{config.h.in}#;
s#@subsection @file{Makefile.in} at top level#@subsection トップレベルの@file{Makefile.in}#;
s#@subsection @file{Makefile.in} in @file{src/}#@subsection @file{src/}内の@file{Makefile.in}#;
s#@subsection @file{gettext.h} in @file{lib/}#@subsection @file{lib/}内の@file{gettext.h}#;
s#@section Autoconf macros for use in @file{configure.ac}#@section @file{configure.ac}内でのautoconfマクロの使用#;
s#@subsection AM_GNU_GETTEXT in @file{gettext.m4}#@subsection @file{gettext.m4}内のAM_GNU_GETTEXT#;
s#@subsection AM_GNU_GETTEXT_VERSION in @file{gettext.m4}#@subsection @file{gettext.m4}内のAM_GNU_GETTEXT_VERSION#;
s#@subsection AM_GNU_GETTEXT_NEED in @file{gettext.m4}#@subsection @file{gettext.m4}内のAM_GNU_GETTEXT_NEED#;
s#@subsection AM_GNU_GETTEXT_INTL_SUBDIR in @file{intldir.m4}#@subsection @file{intldir.m4}内のAM_GNU_GETTEXT_INTL_SUBDIR#;
s#@subsection AM_PO_SUBDIRS in @file{po.m4}#@subsection @file{po.m4}内のAM_PO_SUBDIRS#;
s#@subsection AM_XGETTEXT_OPTION in @file{po.m4}#@subsection @file{po.m4}内のAM_XGETTEXT_OPTION#;
s#@subsection AM_ICONV in @file{iconv.m4}#@subsection @file{iconv.m4}内のAM_ICONV#;
s#@section Integrating with CVS#@section CVSによる統合#;
s#@subsection Avoiding version mismatch in distributed development#@subsection 分散開発におけるバージョンミスマッチを避ける#;
s#@subsection Files to put under CVS version control#@subsection CVSバージョンコントロールの配下に置くファイル#;
s#@subsection Invoking the @code{autopoint} Program#@subsection @code{autopoint}プログラムの呼び出し#;
s#@section Creating a Distribution Tarball#@section 配布用tarballの作成#;
s#@chapter The Installer's and Distributor's View#@chapter インストーラーと配布者の視点#;
s#@chapter Other Programming Languages#@chapter その他のプログラミング言語#;
s#@section The Language Implementor's View#@section 言語実装者の視点#;
s#@section The Programmer's View#@section プログラマーの視点#;
s#@section The Translator's View#@section 翻訳者の視点#;
s#@subsection C Format Strings#@subsection Cフォーマット文字列#;
s#@subsection Objective C Format Strings#@subsection Objective Cフォーマット文字列#;
s#@subsection Shell Format Strings#@subsection Shellフォーマット文字列#;
s#@subsection Python Format Strings#@subsection Pythonフォーマット文字列#;
s#@subsection Lisp Format Strings#@subsection Lispフォーマット文字列#;
s#@subsection Emacs Lisp Format Strings#@subsection Emacs Lispフォーマット文字列#;
s#@subsection librep Format Strings#@subsection librepフォーマット文字列#;
s#@subsection Scheme Format Strings#@subsection Schemeフォーマット文字列#;
s#@subsection Smalltalk Format Strings#@subsection Smalltalkフォーマット文字列#;
s#@subsection Java Format Strings#@subsection Javaフォーマット文字列#;
s#@subsection C\# Format Strings#@subsection C\#フォーマット文字列#;
s#@subsection awk Format Strings#@subsection awkフォーマット文字列#;
s#@subsection Object Pascal Format Strings#@subsection Object Pascalフォーマット文字列#;
s#@subsection YCP Format Strings#@subsection YCPフォーマット文字列#;
s#@subsection Tcl Format Strings#@subsection Tclフォーマット文字列#;
s#@subsection Perl Format Strings#@subsection Perlフォーマット文字列#;
s#@subsection PHP Format Strings#@subsection PHPフォーマット文字列#;
s#@subsection GCC internal Format Strings#@subsection GCC internalフォーマット文字列#;
s#@subsection GFC internal Format Strings#@subsection GFC internalフォーマット文字列#;
s#@subsection Qt Format Strings#@subsection Qtフォーマット文字列#;
s#@subsection KDE Format Strings#@subsection KDEフォーマット文字列#;
s#@subsection Boost Format Strings#@subsection Boostフォーマット文字列#;
s#@subsection Lua Format Strings#@subsection Luaフォーマット文字列#;
s#@subsection JavaScript Format Strings#@subsection JavaScriptフォーマット文字列#;
s#@section The Maintainer's View#@section メンテナーの視点#;
s#@section Individual Programming Languages#@section 個別のプログラミング言語#;
s#@subsection C, C++, Objective C#@subsection C、C++、Objective#;
s#@subsection sh - Shell Script#@subsection sh - シェルスクリプト#;
s#@subsubsection Preparing Shell Scripts for Internationalization#@subsubsection インターナショナリゼーションのためにシェルスクリプトを準備する#;
s#@subsubsection Contents of @code{gettext\.sh}#@subsubsection @code{gettext.sh}の内容#;
s#@subsubsection Invoking the @code{gettext} program#@subsubsection @code{gettext}プログラムの呼び出し#;
s#@subsubsection Invoking the @code{ngettext} program#@subsubsection @code{ngettext}プログラムの呼び出し#;
s#@subsubsection Invoking the @code{envsubst} program#@subsubsection @code{envsubst}プログラムの呼び出し#;
s#@subsubsection Invoking the @code{eval_gettext} function#@subsubsection @code{eval_gettext}プログラムの呼び出し#;
s#@subsubsection Invoking the @code{eval_ngettext} function#@subsubsection @code{eval_ngettext}プログラムの呼び出し#;
s#@subsection bash - Bourne-Again Shell Script#@subsection bash - Bourne-Againシェルスクリプト#;
s#@subsection Python#@subsection Python#;
s#@subsection GNU clisp - Common Lisp#@subsection GNU clisp - Common Lisp#;
s#@subsection GNU clisp C sources#@subsection GNU clisp ソース#;
s#@subsection Emacs Lisp#@subsection Emacs Lisp#;
s#@subsection librep#@subsection librep#;
s#@subsection GNU guile - Scheme#@subsection GNU guile - Scheme#;
s#@subsection GNU Smalltalk#@subsection GNU Smalltalk#;
s#@subsection Java#@subsection Java#;
s#@subsection C\##@subsection C\##;
s#@subsection GNU awk#@subsection GNU awk#;
s#@subsection Pascal - Free Pascal Compiler#@subsection Pascal - フリーPascalコンパイラー#;
s#@subsection wxWidgets library#@subsection wxWidgetsライブラリー#;
s#@subsection YCP - YaST2 scripting language#@subsection YCP - YaST2スクリプト言語#;
s#@subsection Tcl - Tk's scripting language#@subsection Tcl - Tkのスクリプト言語#;
s#@subsection Perl#@subsection Perl#;
s#@subsubsection General Problems Parsing Perl Code#@subsubsection Perlコードをパースするときの一般的な問題#;
s#@subsubsection Which keywords will xgettext look for?#@subsubsection xgettextが探すキーワードはどれ?#;
s#@subsubsection How to Extract Hash Keys#@subsubsection ハッシュキーを抽出する方法#;
s#@subsubsection What are Strings And Quote-like Expressions?#@subsubsection 何が文字列で、何がクォート風の式なのか?#;
s#@subsubsection Invalid Uses Of String Interpolation#@subsubsection 文字列内挿の無効な使い方#;
s#@subsubsection Valid Uses Of String Interpolation#@subsubsection 文字列内挿の有効な使い方#;
s#@subsubsection When To Use Parentheses#@subsubsection カッコを使用すべきとき#;
s#@subsubsection How To Grok with Long Lines#@subsubsection 長い行を理解するには#;
s#@subsubsection Bugs, Pitfalls, And Things That Do Not Work#@subsubsection バグ、落とし穴、動作しない事柄#;
s#@subsection PHP Hypertext Preprocessor#@subsection PHP ハイパーテキストプリプロセッサー#;
s#@subsection Pike#@subsection Pike#;
s#@subsection GNU Compiler Collection sources#@subsection GNU Compiler Collectionソース#;
s#@subsection Lua#@subsection Lua#;
s#@subsection JavaScript#@subsection Java Script#;
s#@section Internationalizable Data#@section インターナショナライズ可能なデータ#;
s#@subsection POT - Portable Object Template#@subsection POT - Portable Object Template#;
s#@subsection Resource String Table#@subsection Resource String Table#;
s#@subsection Glade - GNOME user interface description#@subsection Glade - GNOME user interface description#;
s#@chapter Concluding Remarks#@chapter 結びの言葉#;
s#@section History of GNU @code{gettext}#@section GNU @code{gettext}の歴史#;
s#@section Related Readings#@section 参考文献#" -i.bak gettext.texi

for TEXI in "\
xgettext.texi \
msginit.texi \
msgmerge.texi \
msgcat.texi \
msgconv.texi \
msggrep.texi \
msgfilter.texi \
msguniq.texi \
msgcomm.texi \
msgcmp.texi \
msgattrib.texi \
msgen.texi \
msgexec.texi \
msgfmt.texi \
msgunfmt.texi"
do
    sed "
s#@subsection Attribute manipulation#@subsection 属性の操作#;
s#@subsection Built-in @var{filter}s#@subsection ビルトインの@var{filter}#;
s#@subsection Choice of input file language#@subsection 入力ファイルの言語の選択#;
s#@subsection Conversion target#@subsection 変換する対象#;
s#@subsection Examples#@subsection 例#;
s#@subsection Informative output#@subsection 情報的な出力#;
s#@subsection Input file interpretation#@subsection 入力ファイルの解釈#;
s/@subsection Input file location$/@subsection 入力ファイルの位置/;
s#@subsection Input file location in C\# mode#@subsection C\#モードでの入力ファイルの位置#;
s#@subsection Input file location in Java mode#@subsection Javaモードでの入力ファイルの位置#;
s#@subsection Input file location in Tcl mode#@subsection Tclモードでの入力ファイルの位置#;
s#@subsection Input file syntax#@subsection 入力ファイルの構文#;
s#@subsection Language specific options#@subsection 言語特有のオプション#;
s#@subsection Message selection#@subsection メッセージ選択#;
s#@subsection Operation mode#@subsection オペレーションモード#;
s#@subsection Operation modifiers#@subsection オペレーションの修飾#;
s#@subsection Output details#@subsection 出力の詳細#;
s/@subsection Output file location$/@subsection 出力ファイルの位置/;
s#@subsection Output file location in C\# mode#@subsection C\#モードでの出力ファイルの位置#;
s#@subsection Output file location in Java mode#@subsection Javaモードでの出力ファイルの位置#;
s#@subsection Output file location in Tcl mode#@subsection Tclモードでの出力ファイルの位置#;
s#@subsection Output file location in update mode#@subsection 更新モードでの出力ファイルの位置#;
s#@subsection The filter#@subsection フィルター#;
s#@subsection Useful @var{filter-option}s when the @var{filter} is @samp{sed}#@subsection @var{filter}が@samp{sed}のときの便利な@var{filter-option}#" \
	 -i.bak ${TEXI}

done
