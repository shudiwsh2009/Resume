%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{resume-en}[2015/09/15 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[left=0.25cm, right=1.25cm, vmargin=0.5cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

%\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors
%
%\definecolor{date}{HTML}{666666}
%\definecolor{primary}{HTML}{2b2b2b}
%\definecolor{headings}{HTML}{6A6A6A}
%\definecolor{subheadings}{HTML}{333333}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\newfontfamily\primaryfont[Color=primary, Path=fonts/lato/]{Lato-Reg}
\newfontfamily\headingfont[Color=headings, Path=fonts/lato/]{Lato-Lig}
\newfontfamily\subheadingfont[Path=fonts/lato/]{Lato-Bol}
\newfontfamily\descriptfont[Path=fonts/lato/]{Lato-Reg}
\newfontfamily\locationfont[Path=fonts/lato/]{Lato-Reg}

%----------------------------------------------------------------------------------------
%	NAME FIELD
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[2]{ % Defines the command for the main heading
\begin{flushright}
\vspace{5pt}
\fontsize{18pt}{22pt}
\headingfont #1
\descriptfont #2
\end{flushright}
}

\newcommand{\infosection}[2]{
\begin{flushright}
\fontsize{10pt}{12pt}
\headingfont\ #1 \\ \bigskip
\headingfont\ #2
\end{flushright}
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{2pt} % Removes the spacing around the main section titles
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\fontsize{16pt}{24pt}\headingfont\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontsize{12pt}{12pt}\subheadingfont\bfseries\uppercase{#1}\normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\fontsize{11pt}{13pt}\descriptfont{| #1 \\[1pt]}\normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\fontsize{10pt}{12pt}\locationfont{#1}\normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-5pt minus \topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\usepackage{natbib}
\setlength{\bibsep}{1pt}