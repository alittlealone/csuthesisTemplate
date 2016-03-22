\ProvidesClass{csuthesis0}

\LoadClass[cs4size,oneside,UTF8]{ctexart}
  
%%%%geometry
\RequirePackage{geometry}
\geometry{a4paper, left = 2.5cm, right = 2.5cm, top = 2.5cm, bottom = 2.5cm}

% ----- Loading Packages -----
\RequirePackage{fancyhdr,fancybox}        % personalize page header
\RequirePackage{ifthen}                   % logic options
\RequirePackage{lastpage}                 % refer to the number of last page
\RequirePackage{listings}                 % format source code
\RequirePackage[toc,page,title,titletoc,header]
              {appendix}                  % Appendix
\RequirePackage{paralist}
\RequirePackage{amsthm,amsfonts}
\RequirePackage{amsmath,bm}               % AMSLaTeX
\RequirePackage{amssymb,mathrsfs}         % AMSLaTeX sym-bols
\RequirePackage{latexsym} 
\RequirePackage{longtable,multirow,
              hhline,tabularx,array}      % tables
\RequirePackage{flafter}
\RequirePackage{pifont,calc}
\RequirePackage{colortbl,booktabs}
\RequirePackage{geometry}                 % page layout
\RequirePackage[T1]{fontenc}
\RequirePackage[scaled]{berasans}
\RequirePackage{hyperref}                 % hyper referance

\RequirePackage{makecell}
\RequirePackage{graphicx}


% ----- handle driver -----
\RequirePackage{ifpdf, ifxetex}

% ----- hyperref setup -----
\ifpdf
  \hypersetup{hidelinks}
\else
  \ifxetex
    \hypersetup{hidelinks}
  \else
    \hypersetup{dvipdfm, hidelinks}
  \fi
\fi

% ----- graphics -----
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
\fi

% ----- define color(s) -----
\RequirePackage{xcolor}
\definecolor{grey}{rgb}{0.91,0.91,0.91}

\newenvironment{cnabstract}{%\pushziti%
    \begin{center}{\zihao{4}\heiti \cnabstractname}\end{center}\vspace{1\ccwd}
    \songti\zihao{-4}
    \@afterheading}
    {\par\newpage}

%%%%Head and Foot
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}\chead{}\rhead{}
\lfoot{}\cfoot{\thepage}\rfoot{}
\renewcommand{\headrulewidth}{0pt} 

%%%%Sections
\CTEXsetup[format = {\zihao{4}\bfseries\centering}]{section}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsection}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsubsection}
\linespread{1.0}
%------------------------ sections -------------------------
%\renewcommand\section{\@startsection
%            {section}{2}{\z@}%   {name}{depth}{}
%                {3.5ex \@plus 1ex \@minus .2ex}% positive->leave parindent
%                {2.3ex \@plus.2ex}%
%                {\reset@font\fontsize{13.75pt}{\baselineskip}\sectionformat}}
%\renewcommand\sectionname{\arabic{section}}
%\renewcommand\sectionformat{\selectfont\bfseries}

%----------------------- Theorems -----------------------------------
\newtheorem{theorem}{{定理}}
\newtheorem{proposition}{{命题}}
\newtheorem{lemma}{{引理}}
\newtheorem{corollary}{{推论}}[theorem]
\newtheorem{definition}{{定义}}
\newtheorem{example}{{例}}

% style: 设置页眉页脚
%\setcounter{page}{1}
%\pagestyle{fancy}
%\lhead{}
%\chead{}
%\rhead{\small Page \thepage\ of \pageref{LastPage}}
%\lfoot{}
%\cfoot{}
%\rfoot{}


% style: list typesetting
\definecolor{grey}{rgb}{0.8,0.8,0.8}
\definecolor{darkgreen}{rgb}{0,0.3,0}
\definecolor{darkblue}{rgb}{0,0,0.3}
\def\lstbasicfont{\fontfamily{pcr}\selectfont\footnotesize}
\lstset{%
% indexing
   % numbers=left,
   % numberstyle=\small,%
% character display
    showstringspaces=false,
    showspaces=false,%
    tabsize=4,%
% style
    frame=lines,%
    basicstyle={\footnotesize\lstbasicfont},%
    keywordstyle=\color{darkblue}\bfseries,%
    identifierstyle=,%
    commentstyle=\color{darkgreen},%\itshape,%
    stringstyle=\color{black}%
}
\lstloadlanguages{C,C++,Java,Matlab,Mathematica}

% style: table & figure caption font size and face
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

% style: table vertical merged cells
\newcommand{\thline}{\hline\par\hline\par\hline}

% style: figure include path
\graphicspath{{./}{./img/}{./fig/}{./image/}{./figure/}{./picture/}%
            {./imgs/}{./figs/}{./images/}{./figures/}{./pictures/}}

%\endlinechar `\^^M
\endinput
