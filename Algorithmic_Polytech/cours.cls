\LoadClass[12pt]{amsart}
\usepackage{amsmath}
\usepackage[utf8]{inputenc}
\usepackage{ae,aecompl,aeguill}	% pour utiliser << et >>
\usepackage[english,francais]{babel}
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
\usepackage{xspace}
\usepackage{tikz}\usetikzlibrary{trees,shapes,arrows,matrix,calc}

\definecolor{darkGreen}{RGB}{23,103,1}

\newcommand{\red}[1]{\textbf{\textcolor{red}{#1}}}
\newcommand{\sred}[1]{\textcolor{red}{#1}}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\green}[1]{\textcolor{darkGreen}{#1}}


\numberwithin{equation}{section}
\newtheorem{Theorem}{Théorème}[section]
\newtheorem{Corollary}[Theorem]{Corollaire}
\newtheorem{Proposition}[Theorem]{Proposition}
\newtheorem{Lemma}[Theorem]{Lemme}
\newtheorem{Definition}[Theorem]{Définition}

\newtheorem{Algorithm}[Theorem]{Algorithme}
\newtheorem{Conjecture}[Theorem]{Conjecture}
\newtheorem{Remark}[Theorem]{Remarque}

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
\newtheorem{aav}{AAV}
\newtheorem{Example}[Theorem]{Exemple}
\newtheorem{exerciceavance}[exercice]{Exercice $\clubsuit$}
%\newcommand{\TODO}[1]{{\color{red} TODO: #1}}
\newcommand{\TODO}[1]{}



% Gestion de la correction
\usepackage{etoolbox}
\usepackage{comment}

% Caché / Pas caché

\newbool{affichecache}
\ifx\withcache\undefined
\boolfalse{affichecache} %Version non corrigée
\else
\booltrue{affichecache} %Version corrigée
\fi

\ifbool{affichecache}{\newcommand{\cache}[1]{#1}}{\newcommand{\cache}[1]{}}

\newbool{correction}
\ifx\withcorrection\undefined
\boolfalse{correction} %Version non corrigée
\else
\booltrue{correction} %Version corrigée
\fi


\lstset{
  language=c++,
  basicstyle=\footnotesize,
  showspaces=false,
  showstringspaces=false,
  tabsize=8,
  literate={à}{{\`a}}1 {é}{{\'e}}1 {É}{{\'E}}1 {À}{{\`A}}1 {è}{{\`e}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ç}{{\,c}}1 {ù}{{\`u}}1,
  frame=single
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\@maketitle}{%
  \hrule%
  \medskip\smallskip%
  \noindent
  Polytech App3, Algorithmique%
  \medskip%
  \hrule%
  \bigskip%
  \bigskip%
  \centerline{\textbf{\@title}}%
  \bigskip%
  \bigskip%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\cmd}[1]{\texttt{#1}}
\newcommand{\cmdarg}[1]{$\langle$#1$\rangle$}
\newcommand{\cpp}{\texttt{C++}}
\newcommand{\codeblocks}{\selectlanguage{english}\texttt{Code::Blocks}\selectlanguage{francais}\xspace}

\newcommand{\man}[2]{%
  \noindent%
  \fbox{%
    \begin{minipage}{0.9\textwidth}%
      \paragraph{\tt #1:} #2%
    \end{minipage}%
  }}
  

\usepackage{environ}

\NewEnviron{correction}{
\textbf{Solution}

\BODY
}{}
