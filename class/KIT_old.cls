\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kit}[2025/04/29 Custom class with custom titlepage]

% Load base class
\LoadClass{article}

% Default Packages
\RequirePackage{amsmath, amssymb, stmaryrd}
\RequirePackage{enumerate}
\RequirePackage{mathtools}
\RequirePackage{hyperref}
\RequirePackage{enumitem}

%allow subtitle
\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\@subtitle}{}

% Define the titlepage command
\newcommand{\customtitlepage}{
  \begin{titlepage}
    \centering
    {\Huge \bfseries \@title \par}
    \vspace{0.5cm}
    {\Large \@subtitle \par}
    \vspace{1.5cm}
    {\Large \@author \par}
    \vfill
    \includegraphics[width=10cm]{img/KIT_logo.png}
    \vfill
    {\large \@date \par}
  \end{titlepage}
}

% New namings
\renewcommand{\maketitle}{\customtitlepage}
\renewcommand{\contentsname}{Inhalt}
\setlist[enumerate,1]{label=\emph{\alph*})}

%Shortcuts
\newcommand\nat{\mathbb{N}}
\newcommand\ganz{\mathbb{Z}}
\newcommand\rat{\mathbb{Q}}
\newcommand\reell{\mathbb{R}}
\newcommand\comp{\mathbb{C}}

\newcommand{\con}[1]{\overline{#1}}
\newcommand\re{\text{Re}}
\newcommand\im{\text{Im}}
\newcommand\dx{\ dx}

\newcommand\ra{\rightarrow}
\newcommand\nrai{{n\rightarrow\infty}}
\newcommand\krai{{k\rightarrow\infty}}
\newcommand\xrax{{x\rightarrow x_0}}
\newcommand\rai{{\rightarrow\infty}}

\newcommand\sumk{\sum^\infty_{k=1}}
\newcommand\sumknull{\sum^\infty_{k=0}}
\newcommand\sumka{\sum^\infty_{k=1}a_k}
\newcommand\sumkb{\sum^\infty_{k=1}b_k}

\newcommand\wc{\mathcal{O}}
\newcommand\ac{\Theta}
\newcommand\bc{\Omega}

\newcommand\limk{\lim_{k\rightarrow\infty}}

\newcommand\rec{\text{recMult}}

\newcommand\lnand{\bar\land}
\newcommand\lnor{\bar\lor}

\DeclarePairedDelimiter\abs{\lvert}{\rvert}
\DeclarePairedDelimiter\ab{\lfloor}{\rfloor}
\DeclarePairedDelimiter\lh{\langle}{\rangle}
\DeclarePairedDelimiter\norm{\lvert\lvert}{\rvert\rvert}

