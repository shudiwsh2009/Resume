% Intro Options
\ProvidesClass{resume_zh}[2015/09/17 CV class]
\NeedsTeXFormat{LaTeX2e}
%\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage{hyperref}

% Publications
%\usepackage{cite}
%\renewcommand\refname{\vskip -1.5cm}

% Set main fonts
\usepackage{fontspec}
\usepackage[noindent]{ctex}

\setmainfont[Path = fonts/lato/]{Lato-Lig}
\setCJKmainfont[Path=fonts/fangzheng/, BoldFont=lanting-hei]{lanting-xianhei}

\newfontfamily\primaryfontcn[Path=fonts/fangzheng/]{lanting-zhunhei}
\newfontfamily\headingfontcn[Path=fonts/fangzheng/]{lanting-zhunhei}
\newfontfamily\subheadingfontcn[Path=fonts/fangzheng/]{lanting-zhunhei}
\newfontfamily\descriptfontcn[Path=fonts/fangzheng/]{lanting-xianhei}
\newfontfamily\locationfontcn[Path=fonts/fangzheng/]{lanting-xianhei}

\newfontfamily\primaryfont[Path=fonts/lato/]{Lato-Lig}
\newfontfamily\headingfont[Path=fonts/lato/]{Lato-Bol}
\newfontfamily\subheadingfont[Path=fonts/lato/]{Lato-Bol}
\newfontfamily\descriptfont[Path=fonts/lato/]{Lato-Lig}
\newfontfamily\locationfont[Path=fonts/lato/]{Lato-Lig}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{20pt}{24pt}
\headingfont\bfseries #1
\headingfont\bfseries #2
} \\[3pt]
\centering{
\primaryfont\fontsize{10pt}{13pt}\selectfont #3}
\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
\vspace{-25pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{-5pt}{0pt} 
\titlespacing{\subsection}{0pt}{-5pt}{0pt}
\newcommand{\sectionsep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{
\scshape\headingfontcn\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\subheadingfontcn\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}

\newcommand{\runsubsection}[1]{
\subheadingfontcn\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\raggedright\scshape\descriptfontcn\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\raggedright\locationfontcn\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt \primaryfont}
{\end{itemize}\vspace{-\topsep}}

\usepackage{natbib}
\setlength{\bibsep}{1pt}