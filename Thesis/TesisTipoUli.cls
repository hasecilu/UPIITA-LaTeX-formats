\NeedsTeXFormat{LaTeX2e}

% Name of the class we are creating
\ProvidesClass{TesisTipoUli}[2021/09/12 Tesis]

% Now we need to use an existent class
% I'm using the book class because is very handy
% and we don't need to use the chapter command to view 
% the table of contents with no 0.n elements
\LoadClass[12pt, oneside, a4paper]{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PREAMBLE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Used for "portada" and "acta"
\RequirePackage{parts/0_pre/0.2.2_portada_upiita}

% If you need to change the margins and related stuff uncomment this section
% DO NOT USE anysize PACKAGE, IT GENERATES PROBLEMS WITH GEOMETRY PACKAGE.
% GEOMETRY > ANYSIZE

%https://en.wikibooks.org/wiki/LaTeX/Page_Layout
%https://www.overleaf.com/learn/latex/page_size_and_margins
%https://tex.stackexchange.com/questions/8260/what-ar	e-the-various-units-ex-em-in-pt-bp-dd-pc-expressed-in-mm
\RequirePackage{calc}
\RequirePackage[includeheadfoot]{geometry}

\setlength{\hoffset}{0mm} 			% 20[mm] left  margin: 1[in] + \hoffset
\setlength{\oddsidemargin}{20mm-1in}
\setlength{\textwidth}{\paperwidth-20mm-15mm}
\setlength{\marginparsep}{100mm}	% Margin notes separation
\setlength{\marginparwidth}{0mm}	% No margin notes

\setlength{\voffset}{0mm} 			% 20[mm] up  margin: 1[in] + \voffset
\setlength{\topmargin}{10mm-1in}
\setlength{\headheight}{12pt}
\setlength{\headsep}{20mm-10mm-12pt}
\setlength{\textheight}{\paperheight-20mm-20mm}
\setlength{\footskip}{10mm}

%\RequirePackage[main=spanish, english, japanese]{babel}  % Indica que escribiermos en es, en, jp
\RequirePackage[main=spanish, english]{babel}  % Indica que escribiermos en es, en, jp
%\RequirePackage[utf8]{inputenc}  %Codificación usada: ISO-8859-1(latin1)  o utf8
%\RequirePackage{fourier}  %logos and ornaments
\spanishdecimal{.}


%% If you are interested on writing Chinese/Japanese/Korean text you need this package and need to install the HanaMinA and HanaMinB fonts
%% https://www.ctan.org/pkg/xecjk
%\RequirePackage{xeCJK}
%%% enable fallback font feature
%\xeCJKsetup{AutoFallBack}
%\setCJKmainfont{HanaMinA}
%% set fallback fonts to `HanaMinA'
%\setCJKmainfont[FallBack]{HanaMinB}


% Important packages related to maths and important elements.

\RequirePackage{amsmath}  	% Comandos extras para matemáticas
\RequirePackage{amssymb}  	% Simbolos matematicos (por lo tanto)
\RequirePackage{commath}  	% Diferenciales, integrales, % etc (\od, \dif, etc)
\RequirePackage{mathtools}  % Comandos extras para matemáticas
\RequirePackage{mathrsfs}  	% Support for using RSFS fonts in maths
\RequirePackage{cancel}  	% Para cancelar expresiones (\cancelto{0}{x})

\RequirePackage{graphicx}  	% Enhanced support for graphics
\RequirePackage{sidecap}  	% Para poner el texto de las imágenes al lado
\RequirePackage{float}  	% Improved interface for floating objects
\RequirePackage{capt-of}  	% Permite usar etiquetas fuera de elementos flotantes
\RequirePackage{wrapfig}  	% Text wrapped around figures & tables
\RequirePackage{subfigure}  % Subfiguras

\RequirePackage{color}  	% Foreground and background colour management
\RequirePackage{xcolor}  	% Color extensions for LaTeX and pdfLaTeX 
\RequirePackage{tcolorbox}  % Coloured boxes, for LaTeX examples and theorems
\RequirePackage{colortbl} 	% Add colour to LaTeX tables

\RequirePackage[export]{adjustbox}  % Several macros to adjust boxed content
\RequirePackage{supertabular}
\RequirePackage{array} 		% Extending the array and tabular environments
\RequirePackage{multicol}  	% Intermix single and multiple columns
\RequirePackage{multirow}  	% Intermix single and multiple rows


\RequirePackage{enumitem} 	% Customize lists
\RequirePackage{lipsum}  	% Dummy text
\RequirePackage{tikz}

\RequirePackage{fancyhdr} 	% Control of headers and footers

% Set biblatex as bibliography manager, biblatex > bibtex
\RequirePackage[backend=biber, style=ieee]{biblatex} % Referencias

\RequirePackage{pdfpages}	% Add pdf files to your text
\RequirePackage{titling}	% To be able to use cover from Professor Juan Carlos Guzmán Salgado
\RequirePackage[usestackEOL]{stackengine}	% For  left-aligned text in the lower right-hand corner with preset style
\RequirePackage{fontspec}	% To create text with custom font

%\RequirePackage{chemfig} 	% Draw molecules
%\RequirePackage{showframe} % Show boxes on document


% CUSTOM COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newtcolorbox{mymathbox}[1][]{colback=white, sharp corners, #1}
%\begin{mymathbox}[title=Title of the custom box, colframe=colorIPN]
	%	% Text, equations, figures and more
	%\end{mymathbox}

% IPN custom color <3; for hyperlinks
\definecolor{colorIPN}{RGB}{108 29 69}  % Pantone 222 C
\definecolor{colorIPNdark}{HTML}{360F22} % Color generated with \usecolortheme[named=colorIPN]{structure} on beamer document
\definecolor{colorIPNlight}{HTML}{6C1D45} % Color generated with \usecolortheme[named=colorIPN]{structure} on beamer document
\RequirePackage[colorlinks=true, plainpages=true, citecolor=blue, linkcolor=colorIPN]{hyperref}

% Circle for referencing equations alternative, \textcircled is ugly
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
		\node[shape=circle, draw, inner sep=2pt] (char) {#1};}
}

\RequirePackage{appendix}
\renewcommand{\appendixname}{Apéndices}
\renewcommand{\appendixtocname}{Apéndices toc}
\renewcommand{\appendixpagename}{Apéndices page}

% Thick horizontal lines
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

%\fontspec[Path=.fonts/cheltenham-normal/]{CHELTEN3.ttf}

\newfontfamily\myfont{Chilanka}	% Create a new font command
\newfontfamily\myCBfont[Path=.fonts/cheltenham-normal/]{CHELTEN3.ttf}	% Create a new font command


% Number equations/figures/tables within sections (i.e. 1.1, 1.2, 2.1, 2.2 instead of 1, 2, 3, 4)
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}

\renewcommand{\figurename}{Figurín. }

% PAGE FORMAT RELATED %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\parindent}{2em}	% Indentation - horizontal length
\setlength{\parskip}{1em} 	% Indentation - vertical length
\renewcommand{\baselinestretch}{1} % Interline space
% https://www.overleaf.com/learn/latex/paragraph_formatting

% Headers and footers
%\pagestyle{fancy}
%\fancyhf{}
%%\fancyhead[L]{\footnotesize Instituto Polit\'ecnico Nacional}
%\fancyhead[L]{\footnotesize IPN}  % Left head
%%\fancyhead[R]{\footnotesize Unidad Profesional Interdisciplinaria en Ingenier\'ia y Tecnolog\'ias Avanzadas}
%\fancyhead[R]{\footnotesize UPIITA}   % Right head
%\fancyfoot[R]{\footnotesize Ingenier\'ia Mecatrónica}  % Right foot
%\fancyfoot[C]{\thepage}  % Center
%\fancyfoot[L]{\footnotesize Sistema embebido bien ching\'on implementado en FPGA }  % Left foot
%\renewcommand{\footrulewidth}{0.4pt}

% WTF COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (etiquetas de figuras)
%\providecommand{\norm}[1]{\lVert#1\rVert}
%% Permite usar etiquetas fuera de elementos flotantes
%% (etiquetas de figuras)
%\RequirePackage{caption}
%\providecommand{\norm}[1]{\lVer#1\rVert}

\sidecaptionvpos{figure}{c}  % Para que el texto se alinee al centro vertical


% EXTRA COMMANDS FOR SOLVING SOME ERRORS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\extrafloats{100}
% https://tex.stackexchange.com/questions/46512/too-many-unprocessed-floats
\allowdisplaybreaks
% https://tex.stackexchange.com/questions/51682/is-it-possible-to-pagebreak-aligned-equations