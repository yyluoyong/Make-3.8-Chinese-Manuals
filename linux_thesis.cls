\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{linux_thesis}[]



\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

%Minimum xeCJK version:3.2.10, date:2014/03/01
\PassOptionsToPackage{CJKchecksingle}{xeCJK}

\RequirePackage{color}

%采用5号字体
\LoadClass[c5size,a4paper,fancyhdr,fntef,fontset]{ctexbook}

\RequirePackage{hyperref}
\hypersetup{linkcolor=black,citecolor=black,urlcolor=black}

\RequirePackage{fancyhdr}

\xeCJKsetup{AllowBreakBetweenPuncts}

%Chinese font size
\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}

%===================================================================
%版面细节设置
%===================================================================
\RequirePackage{geometry} %控制版面大小
\geometry{left=25.4mm, right=25.4mm, top=25.4mm, bottom=25.4mm}

%调整段间距
%\setlength{\parskip}{1.5ex plus0.5ex minus 0.5ex}
\setlength{\parskip}{0pt}

%设置页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[EL,OR]{\thepage}
\fancyhead[OC]{\nouppercase{\fangsong\rightmark}}
\fancyhead[EC]{\nouppercase{\fangsong\leftmark}}
%===================================================================


%===================================================================
%定义章节标题格式(ps:参考ctex宏包使用)
%===================================================================
\RequirePackage{titletoc}
\RequirePackage{titlesec}

\CTEXsetup[number={\arabic{chapter}}]{chapter}

\titleformat{\chapter}[display]
{\bfseries\Large}
{\filleft \Huge 第 {\thechapter} 章}
{4ex}
{\titlerule
\vspace{2ex}%
\filright}
[\vspace{2ex}%
\titlerule]

%\CTEXsetup[name={\S\,,}, beforeskip=3.ex plus 1ex minus .2ex]{section}
%\CTEXsetup[name={\S\,,}]{subsection}%在序号前面添加 \S 符号
%\CTEXsetup[name={\S\,,}]{subsubsection}%在序号前面添加 \S 符号
%\CTEXsetup[format={\large\bfseries\flushleft}]{section}
%\CTEXsetup[format={\bfseries\flushleft}]{subsection}

\ctexset{
    section = {
        name={\S\,,},
        format={\large\bfseries\flushleft},
        beforeskip={3.ex plus 1ex minus .2ex}
    },
    subsection = {
        name={\S\,,},
        format={\bfseries\flushleft}
        %beforeskip=3.ex plus 1ex minus .2ex
    }
}
\titlespacing{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.0ex plus .2ex}
%===================================================================

%===================================================================
%设置目录格式
%===================================================================
\CTEXoptions[contentsname={\hfill 目\rule{\ccwd}{0pt}录 \hfill}] % 设置目录格式

\titlecontents{chapter}[0em]
  {\vspace{6bp}\sihao\bfseries}%14pt，如果希望美观一些，可以无视章节标题用宋体的规定，自行添加\bfseries
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[1.1\ccwd]
  {\vspace{1bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.5\ccwd]%原来是2.3
  {\vspace{1bp} \wuhao}%规定三级标题是10.5pt
  {\thecontentslabel\hspace*{0.5em}}
  {}
 {\titlerule*[0.5pc]{$\cdot$}\contentspage}
%================================================================



%设置图片、表格标题的格式
\RequirePackage[oneline]{caption2}
\renewcommand{\captionlabeldelim}{\rule{\ccwd}{0pt}} %设置标题的分隔符,默认为 :
\captionsetup{labelfont+={bf}} %作用和以下三句相同
%\DeclareCaptionFont{cs4size}{\xiaosi}
%\captionsetup{labelfont={cs4size,bf}}
%\captionsetup{textfont=cs4size}
\makeatletter
\renewcommand{\thefigure}{\thesection-\@arabic\c@figure}
\renewcommand{\thetable}{\thesection-\@arabic\c@table}
\makeatother

\RequirePackage{enumitem} %控制罗列环境需要的包
\setitemize{topsep=0pt} %设置 itemize 罗列环境顶端距离

\RequirePackage{mdwlist} %与正文等行距的罗列环境

%===================================================================
%长表格环境设置
%===================================================================
\RequirePackage{longtable} %长表格
%\setlength{\LTpre}{0pt} %设置 longtable 与上文的距离
%\setlength{\LTpost}{0pt} %设置 longtable 与下文的距离
\renewcommand{\arraystretch}{1.3} %设置 longtable 行距的基本拉伸值
\RequirePackage{booktabs} %制作表格粗框线
%===================================================================

%\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\RequirePackage{fancyvrb}
\fvset{listparameters=\setlength\topsep{0pt}}

%===================================================================
%设置一个源码输入环境
%===================================================================
\RequirePackage{fancybox}
\RequirePackage{framed}

% Redefine these colors to your liking in the preamble.
\definecolor{TitleColor}{rgb}{0.126,0.263,0.361}
\definecolor{InnerLinkColor}{rgb}{0.208,0.374,0.486}
\definecolor{OuterLinkColor}{rgb}{0.216,0.439,0.388}
% Redefine these colors to something if you want to have colored
% background and border for code examples.
\definecolor{VerbatimColor}{rgb}{0.933,0.933,0.933}
\definecolor{VerbatimBorderColor}{rgb}{1,1,1}

% Redefine the Verbatim environment to allow border and background colors.
% The original environment is still used for verbatims within tables.
\let\OriginalVerbatim=\Verbatim
\let\endOriginalVerbatim=\endVerbatim

\makeatletter
% Play with vspace to be able to keep the indentation.
\newlength\distancetoright
\def\mycolorbox#1{%
  \setlength\distancetoright{\linewidth}%
  %\addtolength{\distancetoright}{-2em} %
  \fcolorbox{VerbatimBorderColor}{VerbatimColor}{%
  \begin{minipage}{\distancetoright}%
    #1
  \end{minipage}%
  }%
}
\def\FrameCommand{\mycolorbox}
\makeatother

\renewcommand{\Verbatim}[1][1]{%
  \vspace{-0.5em} %引入设置，减小与上下文之间的空白
  % list starts new par, but we don't want it to be set apart vertically
  \bgroup\parskip=0pt%
  %\smallskip%
  % The list environement is needed to control perfectly the vertical
  % space.
  \list{}{%
  \setlength\parskip{0pt}%
  \setlength\itemsep{0ex}%
  \setlength\topsep{0ex}%
  \setlength\partopsep{0pt}%
  \setlength\leftmargin{0pt}%
  %\setlength\listparindent{2em}
  }%
  \item\MakeFramed {\FrameRestore}%
     \small%
    \OriginalVerbatim[#1]%
}
\renewcommand{\endVerbatim}{%
    \endOriginalVerbatim%
  \endMakeFramed%
  \endlist%
  % close group to restore \parskip
  \egroup%
}
%===================================================================


\RequirePackage{wrapfig}
\RequirePackage{makecell}

%表格中插入图片居中
\newcommand\mgape[1]{\gape{$\vcenter{\hbox{#1}}$}}
%表格中换行
%\tabincell{c}{haha// heihei//zeze}
%\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
%\makecell[c]{haha \\ hehe}
\renewcommand\cellalign{tc}

%加载各种预设值的封面
\RequirePackage{titlepage/ManyTitlePage}

\RequirePackage{metalogo}

\endinput
