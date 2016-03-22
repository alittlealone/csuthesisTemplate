%\NeedsTexFormat{LaTeX2e}
\ProvidesClass{csuthesis}[2016/03   Central South University Template]

\LoadClass[a4paper,fancyhdr,hyperref,12pt,UTF8,twoside,openany]{ctexbook}

\hypersetup{%
	hyperfootnotes=true,
	hyperindex=true,
	colorlinks=true,
	bookmarksnumbered=true,
	bookmarksopen=true,
 	bookmarksopenlevel=0,
	breaklinks=true}%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

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
\renewcommand*{\baselinestretch}{1.38}

%\def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
%\defaultfontfeatures{Mapping=tex-text} % after fontspec
%\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
%\setCJKsansfont{Adobe Heiti Std}
%\setCJKmonofont{Adobe Kaiti Std}
%\setCJKfamilyfont{song}{Adobe Song Std}
%\setCJKfamilyfont{hei}{Adobe Heiti Std}
%\setCJKfamilyfont{fs}{Adobe Fangsong Std}
%\setCJKfamilyfont{kai}{Adobe Kaiti Std}

\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

%\newcommand{\song}{\CJKfamily{song}}    % 宋体
%\def\songti{\song}
%\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
%\def\fangsong{\fs}
%\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
%\def\kaishu{\kai}
%\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
%\def\heiti{\hei}
%\newcommand{\li}{\CJKfamily{li}}        % 隶书
%\def\lishu{\li}
%\newcommand{\you}{\CJKfamily{you}}      % 幼圆
%\def\youyuan{\you}
%
%\thu@define@fontsize{chuhao}{42bp}
%\thu@define@fontsize{xiaochu}{36bp}
%\thu@define@fontsize{yihao}{26bp}
%\thu@define@fontsize{xiaoyi}{24bp}
%\thu@define@fontsize{erhao}{22bp}
%\thu@define@fontsize{xiaoer}{18bp}
%\thu@define@fontsize{sanhao}{16bp}
%\thu@define@fontsize{xiaosan}{15bp}
%\thu@define@fontsize{sihao}{14bp}
%\thu@define@fontsize{banxiaosi}{13bp}
%\thu@define@fontsize{xiaosi}{12bp}
%\thu@define@fontsize{dawu}{11bp}
%\thu@define@fontsize{wuhao}{10.5bp}
%\thu@define@fontsize{xiaowu}{9bp}
%\thu@define@fontsize{liuhao}{7.5bp}
%\thu@define@fontsize{xiaoliu}{6.5bp}
%\thu@define@fontsize{qihao}{5.5bp}
%\thu@define@fontsize{bahao}{5bp}

\let\csu@oldtabular\tabular
\let\csu@endoldtabular\endtabular
\renewenvironment{tabular}%
	{\bgroup%
	\renewcommand{\arraystretch}{1.38}%
	\csu@oldtabular}%
	{\csu@endoldtabular\egroup}
	
\setlength\parindent{2em}

\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

\fancypagestyle{plain}{
     \fancyhf{}
	 \fancyhead{}
	 \chead{\normalfont\small\rmfamily\nouppercase{\leftmark}} 
     \fancyfoot[C]{-\,\thepage\,-}
     \renewcommand{\headrulewidth}{0.4pt}
}

\newenvironment{cnabstract}{%
	}
	
\newenvironment{enabstract}{%
	}
	
\endinput