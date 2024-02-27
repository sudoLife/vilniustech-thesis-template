\ProvidesClass{thesis}[Vilnius Tech Thesis Class]
\LoadClass[a4paper]{article} % Load the base report class with A4 paper

% Required packages
\RequirePackage{geometry}  % For setting page dimensions and margins
\RequirePackage{titlesec}  % For customizing titles and headings
\RequirePackage{xcolor}    % For defining and using colors
\RequirePackage{fontspec}  % For setting fonts (requires XeLaTeX or LuaLaTeX)
\RequirePackage{indentfirst} % For indenting the first paragraph of a section

% Define custom colors
\definecolor{accentcolor}{RGB}{23, 101, 207}

% Set page size and margins
\geometry{
    a4paper,
    inner=2.50cm,
    outer=1.50cm,
    top=2cm,
    bottom=1cm,
    footskip=0cm
}

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
\RequirePackage{chngcntr}
\counterwithin{figure}{subsection}
\renewcommand{\fnum@figure}{Fig. \thefigure}

% End of class file
