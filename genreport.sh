#!/bin/bash

echo "input new report name."
read FNAME

echo "\documentclass{jsarticle}
\usepackage{amsmath,amssymb}
\usepackage{here}
\usepackage[dvipdfmx]{graphicx}
\usepackage{listings,jlisting}
\usepackage{comment}
\usepackage{fancyhdr}
\pagestyle{fancy}
\lhead{}
\rhead{}
\rhead{\thepage{}}
\cfoot{}
\usepackage{color}
\lstset{%listings の表示設定
	breaklines = true,%自動で折り返す。
	tabsize = 2,%tabsize
	frame=shadowbox,%枠を上下左右に表示する
	basicstyle = \scriptsize,%\footnotesize,
	showstringspaces=false,%文字列中のスペースをちゃんと" "と表示。(デフォルトは文字列中のスペースは可視設定)
%	numbers=left,%行番号を左に
%	framexleftmargin=6mm,%行番号をフレーム内に
%	numberstyle=\scriptsize,%行番号のサイズ
%	stepnumber=1,%1行おきに行番号を
%	numbersep=1zw,%ソースと行番号の間隔
	language = C}%言語設定
\renewcommand{\headrulewidth}{0pt}
%レポートタイトル
%\title{\vspace{-4cm}report}
%\date{}
%\author{}
\begin{document}
%タイトルをつけるタイプのレポートはコメントアウトを外す
%\maketitle

\begin{comment}
\tableofcontents
\newpage
\end{comment}

\section{実験項目}
\section{目的}
\section{方法}
\section{結果}
\section{考察}
\section{課題}


\begin{comment}
これがコード記述フォーマット
\begin{figure}[H]
\begin{lstlisting}[basicstyle=\ttfamily\footnotesize, frame=single]
\end{lstlisting}
\caption{}
\end{figure}

これが、外部texファイルをマスターに統合するフォーマット
\input{tex_table.txt}

これがソースコードを外部から読み込むフォーマット
\lstinputlisting[basicstyle=\ttfamily\footnotesize, frame=single,caption=実験アセンブリ,captionpos=b]{k3_p.txt}

これが図挿入フォーマット
\begin{figure}[H]
\centering
\includegraphics[width=15cm]{fft.png}
\caption{フーリエ変換後}
\end{figure}

\end{comment}
\end{document}
" > $FNAME.tex
