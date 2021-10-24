%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%             东南大学电路实验报告 LaTeX 模板
%%                SEU-Circuit-Report.cls
%% https://github.com/Teddy-van-Jerry/SEU_Circuit_Report
%% ======================================================
%% 版本信息：
%% v1.1 (Oct. 24, 2021)
%% ------------------------------------------------------
%% 模板制作：
%% Teddy van Jerry, (me@teddy-van-jerry.org)
%% * GitHub: https://github.com/Teddy-van-Jerry
%% * Website: https://teddy-van-jerry.org
%% * Blog: https://blog.teddy-van-jerry.org
%% ------------------------------------------------------
%% 使用说明：
%% 1. 编译使用 XeLaTeX 和 Biber
%% 2. 报告基本信息通过修改导言区以 exp 开头的命令
%% 3. 参考文献位于 ref/ref.bib
%% 4. 报告模板依据 MIT License 开源共享
%% ------------------------------------------------------
%% Copyright 2021 (c) Teddy van Jerry
%%
%% Permission is hereby granted, free of charge, to any
%% person obtaining a copy of this software and
%% associated documentation files (the "Software"), to
%% deal in the Software without restriction, including
%% without limitation the rights to use, copy, modify,
%% merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom
%% the Software is furnished to do so, subject to the
%% following conditions:
%%
%% The above copyright notice and this permission notice
%% shall be included in all copies or substantial
%% portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF
%% ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
%% LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
%% FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
%% EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
%% FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
%% AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
%% USE OR OTHER DEALINGS IN THE SOFTWARE.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SEU-Circuit-Report}[2021/10/20 TVJ Circiut Experiment Report Template]
\def\@@ptsize{12pt}
\DeclareOption{9pt}{\def\@@ptsize{9pt}}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[a4paper,onecolumn,\@@ptsize]{article}
\RequirePackage{ctex}
\RequirePackage[top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{color}
\RequirePackage{bm}
\RequirePackage{fancyhdr}
\RequirePackage{algorithm}
\RequirePackage{enumerate}
\RequirePackage{algpseudocode}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{subfig}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{amssymb,amsmath,amsfonts,amsthm}
\RequirePackage{listings}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{lipsum}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{makecell}
\RequirePackage{sectsty}
\RequirePackage{url}
\RequirePackage{footnote}
\RequirePackage{lastpage}
\RequirePackage[colorlinks=true,linkcolor=purple,urlcolor=blue,citecolor=red]{hyperref}
\RequirePackage[backend=biber,style=gb7714-2015,maxnames=3]{biblatex} % 参考文献样式：GB7714-2015

%% 文档信息命令
\global\let\@expno\@empty
\global\let\@expname\@empty
\global\let\@exphouse\@empty
\global\let\@expmajor\@empty
\global\let\@expauthor\@empty
\global\let\@expID\@empty
\global\let\@explab\@empty
\global\let\@expgroup\@empty
\global\let\@expmates@empty
\global\let\@expdate\@empty
\global\let\@expgrade\@empty
\global\let\@exptutor\@empty
\newcommand{\expno}[1]{\gdef\@expno{#1}} % 实验序号
\newcommand{\expname}[1]{\gdef\@expname{#1}} % 实验名称
\newcommand{\exphouse}[1]{\gdef\@exphouse{#1}} % 学院
\newcommand{\expmajor}[1]{\gdef\@expmajor{#1}} % 专业
\newcommand{\expauthor}[1]{\gdef\@expauthor{#1}} % 姓名
\newcommand{\expID}[1]{\gdef\@expID{#1}}  % 学号
\newcommand{\explab}[1]{\gdef\@explab{#1}} % 实验室
\newcommand{\expgroup}[1]{\gdef\@expgroup{#1}} % 实验组别
\newcommand{\expmates}[1]{\gdef\@expmates{#1}} % 同组人员
\newcommand{\expdate}[1]{\gdef\@expdate{#1}} % 实验日期
\newcommand{\expgrade}[1]{\gdef\@expgrade{#1}} % 成绩评定
\newcommand{\exptutor}[1]{\gdef\@exptutor{#1}} % 评阅老师

%% 设置页眉页脚
\pagestyle{fancy}
\fancyhf{}
\rhead{\small \@expID~\@expauthor}
\lhead{\small \@expname}
\cfoot{\small \thepage~/~\pageref*{LastPage}}

%% 添加参考文献 bib 文件
\addbibresource{ref/ref.bib}

%% 定义命令
\newcommand{\expexpect}{{\kaishu 理论数值计算：}}
\newcommand{\expanalyze}{{\kaishu 实验结果分析：}}
\newcommand{\expsimulate}{{\kaishu 仿真运行结果：}}
\newcommand{\emptyline}{{

    ~ % an empty line

}}

%% 设置代码块样式
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{
	numbers=left,  
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\ttfamily},
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=4,
    extendedchars=false,
    morekeywords={documentclass}
}

%% 打印实验报告封面页
\newcommand{\exptitlepage}{
    \thispagestyle{empty} % 取消首页页码
    \vspace{1cm}
    \begin{center}
        {\Large\bfseries 东南大学电工电子实验中心}\\
        \vspace{0.5cm}
        {\Huge\bfseries 实~验~报~告}\\
        \vspace{3cm}
        {\Large 课程名称：\underline{电路与电子线路实验I~电路实验}}\\
        \vspace{3cm}
        {\huge\bfseries 第~\@expno~次实验}\\
        \vspace{5.5cm}
    \end{center}
    {\noindent\large \hspace{0.37em}\makebox[4em][s]{实验名称}：\underline{\@expname}}
    \vspace{-0.5em}
    \begin{multicols}{2}
        \large
        \noindent
        \begin{tabular}{ll}
            \makebox[4em][s]{院（系）}：& \@exphouse \\
            \makebox[4em][s]{姓名}：& \@expauthor \\
            \makebox[4em][s]{实验室}：& \@explab \\            	
            \makebox[4em][s]{同组人员}：& \@expmates \\              
            \makebox[4em][s]{评定成绩}：& \@expgrade \\
        \end{tabular}
        \vfill\null
        \columnbreak
        \noindent
        \begin{tabular}{ll}
            \makebox[4em][s]{专业}：& \@expmajor \\
            \makebox[4em][s]{学号}：& \@expID \\
            \makebox[4em][s]{实验组别}：& \@expgroup \\            	
            \makebox[4em][s]{实验时间}：& \@expdate \\              
            \makebox[4em][s]{评阅老师}：& \@exptutor \\
        \end{tabular}
    \end{multicols}
    \vspace{3cm}
    \begin{center}
        \textcolor{gray}{\LaTeX {\kaishu 模板~\copyright~2021~Teddy van Jerry}}
    \end{center}
    \clearpage
}
