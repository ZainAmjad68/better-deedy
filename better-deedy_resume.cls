% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{fontawesome}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{lighterheadings}{HTML}{404040}
\definecolor{lightestheadings}{HTML}{4d4d4d}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

\usepackage{tikz}
\usepackage{graphicx}
\usepackage{float}

\definecolor{bordercolor}{HTML}{444444} % Define the border color
\definecolor{headings}{HTML}{6A6A6A} % Define the headings color

% Name command
\newcommand{\namesection}[3]{%
  \centering
  {\fontsize{25pt}{37.5pt}%
    \fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
  } \\[5pt]
  \centering
  {\color{headings}%
    \fontspec{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont #3
  }
}

% Pic + Name + Title command
\newcommand{\roundpic}[1]{%
    \centering
    \begin{tikzpicture}
      \draw [draw=bordercolor, line width=3pt, path picture={
          \node at (path picture bounding box.center) {
            \includegraphics[height=3.5cm]{#1}
          };
      }] (0,1) circle (1.8);
    \end{tikzpicture}
}

% Profile Command
\newcommand{\profile}[1]{%
  \begin{minipage}{0.3\textwidth} % Adjust the width as needed
    \section{About Me}
    #1
  \end{minipage}%
}

% Command to create a list of links with icons
\newcommand{\linklist}[1]{%
  \begin{flushright}
    \Large
    #1
  \end{flushright}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Coursework command
\newcommand{\coursework}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Smaller Heading command
\newcommand{\smallhead}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Medium Heading command
\newcommand{\mediumhead}[1]{
\color{lightestheadings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-Bold}\fontsize{12pt}{14pt}\selectfont{#1}\normalfont}

% Conservative Medium Heading command
\newcommand{\conservmediumhead}[1]{
\color{lighterheadings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\fontsize{11pt}{13pt}\selectfont{#1}\normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

