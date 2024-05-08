\ProvidesClass{thesis}[Vilnius Tech Thesis Class]
\LoadClass[12pt,twoside,a4paper]{article} % Load the base report class with A4 paper

% Required packages
\RequirePackage{geometry}  % For setting page dimensions and margins
\RequirePackage{titlesec}  % For customizing titles and headings
\RequirePackage{xcolor}    % For defining and using colors
\RequirePackage{fontspec}  % For setting fonts (requires XeLaTeX or LuaLaTeX)
\RequirePackage{indentfirst} % For indenting the first paragraph of a section
\RequirePackage{caption}   % For custom caption styling
\RequirePackage{array}     % For better column management
\RequirePackage{chngcntr}  % For custom figure numbering
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{amsmath}
\RequirePackage{cleveref}  % For enhanced cross-referencing

% Define custom colors
\definecolor{accentcolor}{RGB}{23, 101, 207}

% Set page size and margins
\geometry{
    a4paper,
    inner=2.50cm,
    outer=1.50cm,
    top=2cm,
    bottom=2cm,
    footskip=1.0cm
}
\raggedbottom

% Custom font settings
% Ensure you compile with XeLaTeX or LuaLaTeX to use fontspec
\setmainfont{Times New Roman}
% Custom title and heading fonts
\newfontfamily\titlefont{EB Garamond}
\newfontfamily\headingfont{EB Garamond}

% Custom title and heading styles, make them uppercase
% Section titles in uppercase
\titleformat{\section}
{\centering\Large\bfseries\color{accentcolor}} % Format
{\thesection} % Label
{1em} % Sep (space between label and title text)
{\MakeUppercase} % Before-code (commands applied to title text)
% increase spacing between section title and text
\titlespacing{\section}{0pt}{1.5\baselineskip}{2\baselineskip}

% Subsection titles in uppercase
\titleformat{\subsection}
{\large\bfseries\color{accentcolor}} % Format
{\thesubsection} % Label
{1em} % Sep
{\MakeUppercase} % Before-code

% Subsubsection titles in uppercase
\titleformat{\subsubsection}
{\normalsize\bfseries\color{accentcolor}} % Format
{\thesubsubsection} % Label
{1em} % Sep
{\MakeUppercase} % Before-code

% Figure style
\counterwithin{figure}{section}
\renewcommand{\fnum@figure}{Fig. \thefigure}
\captionsetup[figure]{
  font=small,
  labelfont=bf
}
\crefname{figure}{Figure}{Figures}
\Crefname{figure}{Figure}{Figures}
\crefformat{figure}{\textbf{#2fig.~#1#3}}
\Crefformat{figure}{\textbf{#2Fig.~#1#3}}

% Table style
\counterwithin{table}{section}
\captionsetup[table]{
  font=small,
  labelfont=bf,
  justification=raggedright,
  singlelinecheck=false
}
\crefname{table}{Table}{Tables}
\Crefname{table}{Table}{Tables}
\crefformat{table}{\textbf{#2table~#1#3}}
\Crefformat{table}{\textbf{#2Table~#1#3}}

% Vertically centered, left aligned
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}m{#1}}

% Non-numbered sections (TOC inclusive)
\newcommand*{\nsection}[1]{
    \phantomsection % ensure correct anchor for hyperref
    \section*{#1}
    \addcontentsline{toc}{section}{#1}
}

% Code block style
\RequirePackage{listings}
\lstset{
  basicstyle=\footnotesize\ttfamily, % Set the basic style for code
  breaklines=true,                  % Enable line breaking
  tabsize=2,                        % Set tab size
  showstringspaces=false,           % Don't show spaces within strings
  numbers=left,                     % Line numbers on the left
  numberstyle=\tiny\color{gray},    % Style for line numbers
  commentstyle=\color{green},       % Style for comments
  keywordstyle=\color{blue},        % Style for keywords
  stringstyle=\color{orange},       % Style for strings
  frame=single,                     % Frame around the code
  rulecolor=\color{black},          % Frame color
  captionpos=b,                     % Caption position at bottom
  escapeinside={(*@}{@*)},          % Escape to LaTeX with (*@ ... @*)
  morecomment=[l][\color{magenta}]{\#}  % Define more comment styles
}

% Code block colors
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\lstset{
  backgroundcolor=\color{backcolour},
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,         
  breaklines=true,                 
  captionpos=b,                    
  keepspaces=true,                 
  numbers=left,                    
  numbersep=5pt,                  
  showspaces=false,                
  showstringspaces=false,
  showtabs=false,                  
  tabsize=2
}
\AtBeginDocument{\counterwithin{lstlisting}{section}}
\captionsetup[lstlisting]{
  font=small,
  labelfont=bf
}

% So code listing doesn't page break
\lstnewenvironment{code}[1][]%
{
   \noindent
   \minipage{\linewidth} 
   \vspace{0.5\baselineskip}
   \lstset{basicstyle=\ttfamily\footnotesize,frame=single,#1}}
{\endminipage}

% Overriding default itemize settings
\usepackage{enumitem} 
\setlist[itemize]{label={\rule[0.25ex]{0.7ex}{0.7ex}}}

% Table shenanigans
\usepackage{diagbox}
\captionsetup[table]{justification=centering} % Set all table captions to be centered

% End of class file
