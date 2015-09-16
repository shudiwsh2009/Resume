%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{resume-zh}[2015/09/15 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[left=0.25cm, right=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

%\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

%\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
%\definecolor{headings}{HTML}{555555} % The color of the large sections
%\definecolor{subheadings}{HTML}{2b2b2b} % The color of subsections and places worked/studied

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX
\usepackage[noindent]{ctex}

\setmainfont[Path=fonts/lato/]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well
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

%----------------------------------------------------------------------------------------
%	NAME FIELD
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[2]{ % Defines the command for the main heading
\begin{flushright}
\vspace{9pt}
\fontsize{20pt}{24pt} % Font size
\headingfont\bfseries #1 % First name font
\headingfont\bfseries #2 % Last name font
\end{flushright}
}

\newcommand{\infosection}[2]{
\begin{flushright}
\primaryfont #1 \\ \bigskip
\primaryfont #2
\end{flushright}
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\newcommand{\sectionspace}{\vspace{4pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\fontsize{16pt}{24pt}\headingfontcn\headingfont\bfseries}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\fontsize{12pt}{12pt}\subheadingfontcn\subheadingfont\bfseries{#1}\normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\fontsize{11pt}{13pt}\descriptfontcn\descriptfont{#1 \\[1pt]}\normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\fontsize{10pt}{12pt}\locationfontcn\locationfont{#1}\normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{enumitem}
\setitemize[0]{leftmargin=60pt, itemindent=0pt}

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-5pt minus \topsep}\begin{itemize} \itemsep1pt \parskip0pt \parsep0pt \primaryfont}
{\end{itemize}\vspace{-\topsep}}

% \itemindent.4in

\usepackage{natbib}
\setlength{\bibsep}{2pt}