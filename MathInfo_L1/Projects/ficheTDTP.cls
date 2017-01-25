\LoadClass[12pt]{amsart}
\usepackage{amsmath}
\usepackage[utf8]{inputenc}
\usepackage{ae,aecompl,aeguill}	% pour utiliser << et >>
\usepackage[francais]{babel}
\frenchbsetup{og=«, fg=»}
%\usepackage{times}
\usepackage[babel=true,kerning=true]{microtype} 
\usepackage{amsthm}
\usepackage{listings}
\usepackage[a4paper,left=2.4cm,right=2.4cm,top=2.4cm,bottom=2.4cm]{geometry}
\usepackage{eurosym}
\usepackage{color}
\usepackage{hyperref}
\usepackage{graphicx}

\newtheoremstyle{info111}% name of the style to be used
{.5ex}% measure of space to leave above the theorem. E.g.: 3pt
{2ex}% measure of space to leave below the theorem. E.g.: 3pt
{\normalfont}% name of font to use in the body of the theorem
{0pt}% measure of space to indent
{\bfseries}% name of head font
{.}% punctuation between head and body
{\newline}% space after theorem head; " " = normal interword space
{}% Manually specify head
\theoremstyle{info111}
\newtheorem{exercice}{Exercice}
\newtheorem{exerciceavance}[exercice]{Exercice $\clubsuit$}
%\newcommand{\TODO}[1]{{\color{red} TODO: #1}}
\newcommand{\TODO}[1]{}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\@maketitle}{%
  \hrule%
  \medskip\smallskip%
  \noindent
  Licence MPI, Semestre 2, Projets pluridisciplinaires \hfill Année 2016--2017%
  \medskip%
  \hrule%
  \bigskip%
  \bigskip%
  \centerline{\textbf{\@title}}%
  \bigskip%
  \bigskip%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
