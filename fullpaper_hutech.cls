% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % LaTeX document class for the letter-formatted Human Tech paper % % %
% % % First edition 2015.10.30 by Chinook Mok % % % % % % % % % % % % % % %
% % % Modified edition 2015.11.28 by Seungwon Park % % % % % % % % % % % % % % %
% % % Modified by GSHS TeX Society(http://latex.gs.hs.kr) % % % % % % % %
% % % Modified edition 2020.11 by Inkyu Park  % % % % % % % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
\ProvidesClass{fullpaper_hutech}
\LoadClass[pdftex, a4size, twoside, 10pt, twocolumn]{article}


\usepackage[T1]{fontenc}   % To use Times New Roman
\usepackage[utf8]{inputenc}% To use Times New Roman
\usepackage{mathptmx}      % To use Times New Roman
\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}
\usepackage{fancyhdr}      % To customize header and footer
\usepackage{ifthen}        % To distinguish the first page in header
\usepackage{abstract}      % To customize abstract
\usepackage{titlesec}      % To resize the titles of section/subsection/etc...
\usepackage{indentfirst}
\usepackage{kotex}         % korean paper
\usepackage{graphicx}
\usepackage[font=small,labelfont=bf,labelsep=period,skip=0pt]{caption} % Caption setup
\usepackage{ctable} % To customize table
\usepackage{cite}     % To display citations as [1-3] instead of [1,2,3]
\usepackage{enumitem} % To remove the hanging indentation.
\usepackage{xcolor} % To color header and footer

%%% following packages are optional %%%
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage[makeroom]{cancel} %To use cancelto of terms in equation

%%% Color settings %%%
\definecolor{blackgray}{RGB}{96, 96, 96}

%%% Line spacing %%%
\usepackage{setspace}
\setstretch{1.0}


%%%%%%%%%% page setting %%%%%%%%%%%
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\hoffset}{-1in}
\setlength{\oddsidemargin}{15mm}
\setlength{\evensidemargin}{15mm}
\setlength{\textwidth}{180mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}
\setlength{\voffset}{-1in}
\setlength{\topmargin}{20mm}
\setlength{\headheight}{12pt}
\setlength{\headsep}{5.7666mm} % 30mm - (20mm + 12pt) = 5.7666mm
\setlength{\textheight}{242mm} % 297mm - (30mm + 25mm) = 242mm
\setlength{\footskip}{10.7666mm} % 25mm - (10mm + 8pt * 1.5) = 10.7666mm
%%%% two column setting %%%
\setlength{\columnsep}{20pt}

%%%%%%%%% Header & Footer setting %%%%
\pagestyle{fancy}

\fancyhead[RO,LE]{\color{blackgray} \fontsize{9}{0}\selectfont $27^{\rm th}\textrm{ Humantech Paper Award}$}
\fancyhead[LO,RE]{}
\fancyfoot[LO]{\footnotesize 본 논문에 포함된 정보의 전부 또는 일부를 무단으로 제3자에게 공개, 배포, 복사 또는 사용하는 것을 엄격히 금지합니다.}
\fancyfoot[RO]{\thepage}
\fancyfoot[LE]{\thepage}
\fancyfoot[RE]{\footnotesize 본 논문에 포함된 정보의 전부 또는 일부를 무단으로 제3자에게 공개, 배포, 복사 또는 사용하는 것을 엄격히 금지합니다.}
\fancyfoot[C]{}
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{firstpage}{
\fancyhf{}
\fancyhead[L]{\color{blackgray} \fontsize{12}{0}\selectfont $\bf{27}^{\bf th}\textbf{ Humantech Paper Award}$}
\fancyfoot[L]{\footnotesize 본 논문에 포함된 정보의 전부 또는 일부를 무단으로 제3자에게 공개, 배포, 복사 또는 사용하는 것을 엄격히 금지합니다.}
\fancyfoot[R]{\thepage}
}

\makeatletter
\let\ps@plain\ps@fancy
\makeatother

%%%%%%%% Title Setting %%%%%%
\makeatletter
\renewcommand{\maketitle}{\bgroup\setlength{\parindent}{0pt}
\vspace{10pt}
\begin{flushleft}
  \fontsize{20}{0}\selectfont{\textbf{\@title}}
\end{flushleft}\egroup
}
\makeatother

%%%%%%% Abstract Setting %%%%%
\renewcommand{\abstractname}{}
\renewcommand{\absnamepos}{empty}
\renewenvironment{abstract}
 {
  \bfseries \abstractname
  \vspace{24pt}
  \list{}{
    \setlength{\leftmargin}{0mm}
    \setlength{\rightmargin}{\leftmargin}
  }
  \item\relax
  }
 {\endlist}


%%%%%% Section Title Setting %%%%%%% % Modified : added subsubsection
\makeatletter
\def\remove@@dot\csname the#1\endcsname{\arabic{#1}}
\def\p@section{\remove@@dot}
\makeatother

\titleformat*{\section}{\fontsize{11}{11}\selectfont\bfseries}
\titleformat*{\subsection}{\fontsize{10}{10}\selectfont}
\titleformat*{\subsubsection}{\fontsize{10}{10}\selectfont}
\def\thesection{\arabic{section}.}
\def\thesubsection{\arabic{section}.\arabic{subsection}.}
\def\thesubsubsection{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}
\makeatletter
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\ }
\makeatother

%%%%% Caption(Figure/Table) Setting %%%%%%%
\captionsetup{figurename=Fig., singlelinecheck=off} % Figure label (FIG: --> FIGURE)
\captionsetup[table]{
name=Table,   % Table label (Table --> TABLE)
singlelinecheck=off  % Left aligned
}

%%%%% Theorem Setting %%%%%
\theoremstyle{plain}
\newtheorem{thm}{Theorem}

\theoremstyle{definition}
\newtheorem{defn}{Definition}

%%%%% Declaration of Modified mathsymbol `mycdot' %%%%%
\newcommand*\mycdot{{\mkern -1mu\cdot\mkern -1mu}}

%%%% Reference Setting %%%%
\bibliographystyle{fullpaper_hutech}

%%%% Reference Setting %%%%
\renewcommand\refname{REFERENCES}

\makeatletter
\renewcommand{\@biblabel}[1]{[#1]\hfill}
\makeatother

\makeatletter
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \begin{enumerate}[label={[\arabic{enumi}]},itemindent=*,leftmargin=0pt,itemsep=-3pt]
      \@openbib@code
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \end{enumerate}}
\makeatother

