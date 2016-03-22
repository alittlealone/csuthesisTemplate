%\NeedsTexFormat{LaTeX2e}
\ProvidesClass{csuthesis-article}
%[2016/03   Central South University Template]

%\newif\ifcsu@bwprint\csu@bwprintfalse
%\DeclareOption{colorprint}{csu@bwprintfalse}
%\DeclareOption{bwprint}{csu@bwprinttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%\ExecuteOptions{colorprint}
\ProcessOptions\relax

\LoadClass[a4paper, 12pt]{article}

%\RequirePackage{ifxetex}
%\RequireXeTex
%\ifxetex\else
%\ClassError{mcmthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
%\fi
\RequirePackage{ctex}
\RequirePackage{geometry}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{cprotect}
\RequirePackage{listings}
\RequirePackage{indentfirst}
\RequirePackage{caption}
\RequirePackage{enumitem}
\RequirePackage{ulem}
\RequirePackage{calc}
\RequirePackage{hyperref}

\geometry{top=25mm,bottom=25mm,left=30mm,right=20mm}
\renewcommand*{\baselinestretch}{1.62}

\let\csu@oldtabular\tabular
\let\csu@endoldtabular\endtabular
\renewenvironment{tabular}%
	{\bgroup%
	\renewcommand{\arraystretch}{1.38}%
	\csu@oldtabular}%
	{\csu@endoldtabular\egroup}
	
\setlength\parindent{2em}

\setmainfont{Times New Roman}
\setmonofont{Courier New}
\setsansfont{Arial}
\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}

\newtheorem{definition}{\csu@cap@definition}
\newtheorem{theorem}{\csu@cap@theorem}
\newtheorem{lemma}{\csu@cap@lemma}
\newtheorem{corollary}{\csu@cap@corollary}
\newtheorem{assumption}{\csu@cap@assumption}
\newtheorem{conjecture}{\csu@cap@conjecture}
\newtheorem{axiom}{\csu@cap@axiom}
\newtheorem{principle}{\csu@cap@principle}
\newtheorem{problem}{\csu@cap@problem}
\newtheorem{example}{\csu@cap@example}
\newtheorem{proof}{\csu@cap@proof}
\newtheorem{solution}{\csu@cap@solution}

\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

\DeclareGraphicsExtensions{.eps,.pdf,.jpg,.png}

\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song, minusfour, bf},
	%font={\heiti,\zihao{5},bf}, % 图的字体, 宋体小四
	position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={\heiti,\zihao{5},bf}, % 表的字体, 宋体小四
	position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

\AtBeginDocument{%
	\hypersetup{%
		% unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
		hyperfootnotes=true,
		hyperindex=true,
		colorlinks=true,
		bookmarksnumbered=true,
		bookmarksopen=true,
 		bookmarksopenlevel=0,
		breaklinks=true}%
}

%\ifcsu@bwprint\csu@bwprint
%\AtBeginDocument{\hypersetup{hidelinks}}
%\else\relax
%\fi

\renewcommand\contentsname{\csu@cap@contentsname}
\renewcommand\listfigurename{\csu@cap@listfigurename}
\renewcommand\listtablename{\csu@cap@listtablename}
\renewcommand\refname{\csu@cap@refname}
\renewcommand\indexname{\csu@cap@indexname}
\renewcommand\figurename{\csu@cap@figurename}
\renewcommand\tablename{\csu@cap@tablename}
\renewcommand\appendixname{\csu@cap@appendixname}
\renewcommand\abstractname{\csu@cap@abstractname}

\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}

\renewcommand\thesection{\chinese{section}、\kern-1em}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
 	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\centering\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 {3.25ex \@plus1ex \@minus .2ex}%
	 {-1em}%
	 {\normalfont\normalsize\bfseries}}
	 
\renewenvironment{abstract}{%
	\if@twocolumn
		\section*{\abstractname}%
	\else
	 \begin{center}%
	{\zihao{-2}\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
	 \end{center}%
 	 \quotation
	\fi}
	{\if@twocolumn\else\endquotation\newpage\null\fi}

\renewenvironment{quotation}
	{\list{}{\listparindent 2em%
	 \itemindent \listparindent
	 \rightmargin\z@
	 \leftmargin\z@
	 \parsep \z@ \@plus\p@}%
	\item\relax}
	{\endlist}

\newcommand\keywords[1]{%
	\renewcommand{\mcm@tokens@keywords}{#1}
	\par
	\vskip1ex
	{\noindent\zihao{-4}\heiti\mcm@cap@keywordsname：}~{\mcm@tokens@keywords}
	}
	
\renewcommand\appendix{\par
	\setcounter{section}{0}%
	 \setcounter{subsection}{0}%
	\gdef\thesection{\appendixname\@Alph\c@section}}
	
% 重定义参考文献环境
\renewenvironment{thebibliography}[1]
     {\section{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
	  
\newcommand*{\csu@cap@definition}{定义}
\newcommand*{\csu@cap@theorem}{定理}
\newcommand*{\csu@cap@lemma}{引理}
\newcommand*{\csu@cap@corollary}{推论}
\newcommand*{\csu@cap@assumption}{假设}
\newcommand*{\csu@cap@conjecture}{猜想}
\newcommand*{\csu@cap@axiom}{公理}
\newcommand*{\csu@cap@principle}{定律}
\newcommand*{\csu@cap@problem}{问题}
\newcommand*{\csu@cap@example}{例}
\newcommand*{\csu@cap@proof}{证明}
\newcommand*{\csu@cap@solution}{解}

\newcommand*{\csu@cap@contentsname}{目录}
\newcommand*{\csu@cap@listfigurename}{插图清单}
\newcommand*{\csu@cap@listtablename}{附表清单}
\newcommand*{\csu@cap@refname}{参考文献}
\newcommand*{\csu@cap@indexname}{索引}
\newcommand*{\csu@cap@figurename}{图}
\newcommand*{\csu@cap@tablename}{表}
\newcommand*{\csu@cap@appendixname}{附录}
\newcommand*{\csu@cap@abstractname}{摘要}
\newcommand*{\csu@cap@keywordsname}{关键字}


\endinput