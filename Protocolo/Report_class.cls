\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Report_Class}[2020/05/12 Technical Report]

\LoadClass[12pt,oneside,a4paper]{book}

\RequirePackage{calc}
\RequirePackage[includeheadfoot]{geometry}

\setlength{\hoffset}{0mm}
\setlength{\oddsidemargin}{20mm-1in}
\setlength{\textwidth}{\paperwidth-20mm-15mm}
\setlength{\marginparsep}{100mm}
\setlength{\marginparwidth}{0mm}

\setlength{\voffset}{0mm}
\setlength{\topmargin}{10mm-1in}
\setlength{\headheight}{12pt}
\setlength{\headsep}{20mm-10mm-12pt}
\setlength{\textheight}{\paperheight-20mm-20mm}
\setlength{\footskip}{10mm}

\RequirePackage{xeCJK}
%% enable fallback font feature
\xeCJKsetup{AutoFallBack}
\setCJKmainfont{HanaMinA}
% set fallback fonts to `HanaMinA'
\setCJKmainfont[FallBack]{HanaMinB}

\RequirePackage{mathtools}
\RequirePackage{lipsum}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{chemfig}



\RequirePackage{amsmath}  % Comandos extras para matemáticas
\RequirePackage{amssymb}  % Simbolos matematicos (por lo tanto)
\RequirePackage{graphicx}  % Incluir imágenes en LaTeX
\RequirePackage{mathtools}  % Comandos extras para matemáticas
\RequirePackage{wrapfig}  % text wrapped around figures & tables
\RequirePackage{enumitem}  % customize lists
\RequirePackage{mathrsfs}  % Support for using RSFS fonts in maths
\RequirePackage[export]{adjustbox}  % several macros to adjust boxed content
\RequirePackage[most]{tcolorbox}  % Coloured boxes, for LaTeX examples and theorems
\RequirePackage{color}  % foreground and background colour management
\RequirePackage{xcolor}  % color extensions for LaTeX and pdfLaTeX 
\RequirePackage{multicol}  % Intermix single and multiple columns
\RequirePackage{multirow} % 
\RequirePackage{subfigure}  % subfiguras
\RequirePackage{float}  % Improved interface for floating objects
\RequirePackage{capt-of}  % Permite usar etiquetas fuera de elementos flotantes
\RequirePackage{lipsum}  % Dummy text
\RequirePackage{array} % Extending the array and tabular environments
\RequirePackage{colortbl} % Add colour to LaTeX tables
\RequirePackage{chemfig} % Draw molecules




%\RequirePackage{showframe} % Show boxes on document
\RequirePackage{tcolorbox}
\definecolor{colorIPN}{RGB}{108 29 69}  %Pantone 222 C
\newtcolorbox{mymathbox}[1][]{colback=white, sharp corners, #1}

\RequirePackage[backend=biber, style=ieee]{biblatex} % Referencias

\RequirePackage{tikz}
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
		\node[shape=circle,draw,inner sep=2pt] (char) {#1};}}
	
\numberwithin{equation}{section}

\extrafloats{100}
% https://tex.stackexchange.com/questions/46512/too-many-unprocessed-floats
\allowdisplaybreaks
%https://tex.stackexchange.com/questions/51682/is-it-possible-to-pagebreak-aligned-equations