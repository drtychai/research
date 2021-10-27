%
% Whitepaper.csl Class
%    Latex Template
%
\ProcessOptions\relax
\LoadClass[a4paper,10pt,english]{article}
%\LoadClass[a4paper,10pt,twocolumn,english]{article}
\usepackage[utf8]{inputenc} 
\usepackage{csquotes}
%\usepackage{xpatch}
\usepackage[english]{babel}
%-------------------------------------------------------------
\usepackage[T1]{fontenc}
\usepackage{mathptmx}
\usepackage[dvipsnames]{xcolor}
%-------------------------------------------------------------
% Page Dimensions
\usepackage{geometry} 
\geometry{top=1.5cm} 
\geometry{bottom=1.5cm} 
\geometry{left=1.5cm} 
\geometry{right=1.5cm} 
%-----------------------------------------------------------
% Page Styling and Intra-page border
\usepackage{fancyhdr} 
\pagestyle{fancy}
\renewcommand{\headrulewidth}{1pt} 
\lhead{}\chead{}\rhead{}
%--------------------------------------------------------------
% Shortcut for section ligature
%% --> \autoref{sec:bar}
%% where \section{Bar}\label{sec:bar} is how it's defined
\addto\extrasenglish{
  \def\sectionautorefname{\S}
}
\newcommand{\dg}{\textsuperscript{$\dagger$}}
%--------------------------------------------------------------
% Footnotes
% use symbols for footnotes (arabic num used for bib)
\renewcommand*{\thefootnote}{\roman{footnote}}
%-----------------------------------------------------------
% Disable subsection mark functionality; force displace headings via section
\renewcommand\subsectionmark[1]{}
%-----------------------------------------------------------
% Configuration (Sections, Subsections)
\usepackage{titlesec}
%% Section
\titleformat*{\section}{\fontsize{11}{13}\rmfamily\bfseries\scshape}
\titlespacing*{\section}{0pt}{1.5ex}{0.8ex}
%% Sub-section
\titleformat*{\subsection}{\fontsize{10}{12}\rmfamily\bfseries\scshape}
\titlespacing*{\subsection}{0pt}{1.2ex}{0.6ex}
%% Sub-sub-section
\titleformat*{\subsubsection}{\fontsize{9.5}{11.5}\rmfamily\bfseries\scshape}%\itshape}
\titlespacing*{\subsubsection}{0pt}{1.1ex}{0.5ex}%
%% Sub-sub-sub-section
%\titleformat*{\subsubsubsection}{\fontsize{9.25}{11.25}\rmfamily\bfseries\scshape}%
%\titlespacing*{\subsubsubsection}{0pt}{1.1ex}{0.5ex}%
%% Ligature used to denote section
%\renewcommand{\thesection}{\arabic{section}}
%\renewcommand{\thesubsection}{\Alph{subsection}}
%\renewcommand{\thesubsection}{\arabic{subsection}}
%\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
%\renewcommand{\thesubsubsubsection}{\arabic{subsubsubsection}}
%\setcounter{secnumdepth}{3} % Don't number subsubsections
%--------------------------------------------------------------
% Configuration (Authors, Affiliations)
\usepackage{varwidth}
\usepackage[affil-it]{authblk}
\newcommand{\aff}[2]{
    \affil{ \vspace{-1ex}\protect\centering{#1 \\ #2} }
}
\newcommand{\auth}[1]{\author{#1}}
%\newcommand{\corresponding}[2]{\author{\bf #2\thanks{}}}
\newcommand{\email}[1]{
    \begin{NoHyper}
        \let\thefootnote\relax\footnotetext{\hspace{2ex}\sc{#1}}
    \end{NoHyper}
}  
\renewcommand\Affilfont{\itshape\normalsize}
%--------------------------------------------------------------                     
%\usepackage[titles,subfigure]{tocloft}   
\usepackage[T1]{fontenc}
\usepackage{slantsc}
\usepackage{indentfirst}
\renewcommand{\baselinestretch}{1.15}
%\setlength{\baselineskip}{1ex}
%\setlength{\parskip}{1ex}
%\setlength{\parindent}{4ex}

\DeclareFontShape{T1}{cmr}{m}{scit}{<->ssub * cmr/m/scsl}{}
\DeclareFontShape{T1}{cmr}{bx}{scit}{<->ssub * cmr/bx/scsl}{}
\newcommand{\p}[1]{\paragraph{\bfseries\small\scshape{#1}\noscshape}}
\providecommand*\scsldefault{\scdefault\sldefault}

%\setromanfont[
%  FontFace={lsci}{i}{Font=* Light Italic,SmallCapsFont={* Light Italic},SmallCapsFeatures={Letters=SmallCaps},},
%  FontFace={msci}{i}{Font=* Medium Italic,SmallCapsFont={* Medium Italic},SmallCapsFeatures={Letters=SmallCaps},},
%  FontFace={xbsci}{i}{Font=* Black Italic,SmallCapsFont={* Black Italic},SmallCapsFeatures={Letters=SmallCaps},},%=========================
%  ]
%
%\DeclareTextFontCommand{\textlsci}{\lsciseries}
%\DeclareTextFontCommand{\textmsci}{\msciseries}
%\DeclareTextFontCommand{\textxbsci}{\xbsciseries}
%--------------------------------------------------------------                     
\newcommand{\ttl}[2]{
    \title{ \vspace{-3.5ex} \LARGE{#1} \\ \vspace{0.5ex} \Large{\it{#2}}  }
}
\newcommand{\dtstamp}[1]{\date{\vspace{-2.5ex}\small{#1}}}
\newcommand{\ab}[1]{ % abstract frame
    \begin{abstract}
    {\normalsize{#1 \par}}
    \end{abstract}
}
\newcommand{\keywords}[1]{\hspace{6ex} \small{\emph{\sc{#1}} \par}\vspace{-5.0ex}}
\newcommand{\DOI}[1]{\small{\normalfont{#1}}\vspace{0ex}}
%-------------------------------------------------------------
\usepackage[colorlinks = true,
            linkcolor = black,
            urlcolor  = blue,
            citecolor = blue]{hyperref} 
% Easy URI hyperlinks
\newcommand{\lnkref}[2]{{\rmfamily\itshape\href{#1}{#2}}}
%-------------------------------------------------------------
% Configuration (Tables, Figures)
\usepackage[format=plain,
            font=small,
            labelfont=it,
            textfont=it,
            belowskip=-5pt,
            aboveskip=3pt]{caption}
%-----------------------------------------------------------------
% Figures
\usepackage{graphicx} 
\usepackage{float}
\usepackage{stfloats}
\newfloat{lstfloat}{H}{ext}
\usepackage{subfig} 
%-----------------------------------------------------------------
% Tables
\usepackage{booktabs} 
\usepackage{array} 
\makeatletter
\newcommand{\thickhline}{              
   \noalign {\ifnum 0=`}\fi \hrule height 1.5pt
    \futurelet \reserved@a \@xhline
}
\renewcommand\tablename{TABLE}
%-------------------------------------------------------------
% SVG Inline
% ** requires inkscape ** %
\newcommand{\executeiffilenewer}[3]{%
 \ifnum\pdfstrcmp{\pdffilemoddate{#1}}%
 {\pdffilemoddate{#2}}>0%
 {\immediate\write18{#3}}\fi%
}
\newcommand{\includesvg}[1]{%
 \executeiffilenewer{#1.svg}{#1.pdf}%
 {inkscape -D --file=#1.svg --export-pdf=img/#1.pdf --export-latex} \input{#1.pdf_tex}%
}
%-------------------------------------------------------------
% Code Lst Blocks
\floatname{lstfloat}{Listing}
\def\lstfloatautorefname{Listing} % needed for hyperref/auroref

\usepackage{listings}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\definecolor{darkgray}{rgb}{.4,.4,.4}
\definecolor{purple}{rgb}{0.65, 0.12, 0.82}
\definecolor{codegreen}{rgb}{0.34,0.139,0.34}
\definecolor{codered}{rgb}{0.138,0.3,0.3}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\newcommand\numberstyle[1]{%
    \color{codegray}\tiny
    \ifnum#1<10 \fi#1
}

% ASM Keywords
\lstdefinelanguage[x64]{Assembler}[x86masm]{Assembler} {
    morekeywords={
        CDQE,CQO,CMPSQ,CMPXCHG16B,JRCXZ,LODSQ,MOVSXD,
        POPFQ,PUSHFQ,SCASQ,STOSQ,IRETQ,RDTSCP,SWAPGS,
        rax,rdx,rcx,rbx,rsi,rdi,rsp,rbp,
        r8,r8d,r8w,r8b,r9,r9d,r9w,r9b,
        r10,r10d,r10w,r10b,r11,r11d,r11w,r11b,
        r12,r12d,r12w,r12b,r13,r13d,r13w,r13b,
        r14,r14d,r14w,r14b,r15,r15d,r15w,r15b,
        get_scope, check_traps
    },
    morendkeywords={
        OperandTypes
    },
    morestring=[b]126,
    morecomment=[l]{//},
    commentstyle=\color{darkgray}\ttfamily,
    ndkeywordstyle=\color{purple}\bfseries,
    stringstyle=\color{red}\ttfamily,
}

% JS types for C++
\lstdefinelanguage[C++]{JSC}{
    morekeywords={
        namespace, class, static, const, bool, false, true, void, private,
        public, return, ->, DFG_CRASH, break, unsigned, continue, switch, if, while,
        for, case, try, throw, as, OpAdd, JSValue, GET_C
    },
    morendkeywords={
        SLOW_PATH_DECL, bytecode, pc,
        run, handleNode, lowerBoundsCheck, 
        JSC, SSALoweringPhase, Phase, DFG, Graph, Edge, InsertionSet, BasicBlock,
        Node, NodeType, SpecInt32Only, CheckInBounds, KnownCellUse, OpInfo, Array, ArrayStorage, SlowPutArrayStorage, GetArrayLength, String, 
    },
    morecomment=[f][\color{red}]-,         % deleted lines 
    morecomment=[f][\color{green!60!black}]+,       % added lines
    morecomment=[l]{//},
    morecomment=[s]{/*}{*/},
    morestring=[b]',
    morestring=[b]",
    keywordstyle=\color{blue}\bfseries,
    ndkeywordstyle=\color{purple}\bfseries,
    identifierstyle=\color{black},
    stringstyle=\color{orange}\ttfamily,
    commentstyle=\color{darkgray}\ttfamily,
    sensitive=true
}


% JavaScript ES6 keywords
\lstdefinelanguage{JavaScript}{
  alsoletter={.},
  keywords={
    op,dst,lhs,rhs,operandTypes,metadata,arithProfile,
    arguments,await,break,case,catch,class,
    const,continue,debugger,default,delete,
    do,else,enum,eval,export,extends,false,
    finally,for,function,if,implements,import,
    in,instanceof,interface,let,new,null,package,
    private,protected,public,return,static,
    super,switch,this,throw,true,try,typeof,
    var,void,while,with,yield
  },
  ndkeywords={
    add, double,
    Add, PushArg, Return, LoadArgument, CheckIsInteger, IntegerAdd,
    apply, args, Array, Array.from, Array.isArray,
    Array.of, Array.prototype, ArrayBuffer, bind, Boolean,
    call, charAt, charCodeAt, clear, codePointAt, concat,
    class, export, boolean, throw, implements, import, this,
    constructor, copyWithin, DataView, Date, Date.now,
    Date.parse, Date.prototype, Date.UTC, decodeURI,
    decodeURIComponent, encodeURI, encodeURIComponent,
    endsWith, entries, Er,
    VirtualRegister, OperandTypes, ArithProfile
  },
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]{\ 0 \ },
  morestring=[b]{\ 1 \ },
  keywordstyle=\color{blue}\bfseries,
  %ndkeywordstyle=\color{darkgray}\bfseries,
  ndkeywordstyle=\color{purple}\bfseries,
  identifierstyle=\color{black},
  stringstyle=\color{red}\ttfamily,
  commentstyle=\color{darkgray}\ttfamily,
  sensitive=true
}

\lstset{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\numberstyle,
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
    tabsize=2,
    xleftmargin=20pt,
    framexleftmargin=20pt,
    framesep=8pt,
    frame=tb,
    framerule=0pt
}

\lstdefinestyle{asm}         {language=[x64]Assembler}
\lstdefinestyle{ABAP}        {language=ABAP}
\lstdefinestyle{ACSL}        {language=ACSL}
\lstdefinestyle{Ada}         {language=Ada}
\lstdefinestyle{Algol}       {language=Algol}
\lstdefinestyle{Ant}         {language=Ant}       
\lstdefinestyle{Assembler}   {language=Assembler} 
\lstdefinestyle{Awk}         {language=Awk}      
\lstdefinestyle{bash}        {language=bash}      
\lstdefinestyle{Basic}       {language=Basic}     
\lstdefinestyle{Cshp}        {language=C\#}
\lstdefinestyle{C++}         {language=C++}
\lstdefinestyle{C}           {language=C}
\lstdefinestyle{Caml}        {language=Caml} 
\lstdefinestyle{Clean}       {language=Clean}
\lstdefinestyle{Cobol}       {language=Cobol}
\lstdefinestyle{Comal}       {language=Comal}
\lstdefinestyle{csh}         {language=csh}
\lstdefinestyle{Delphi}      {language=Delphi}
\lstdefinestyle{Eiffel}      {language=Eiffel}
\lstdefinestyle{Elan}        {language=Elan}
\lstdefinestyle{erlang}      {language=erlang}
\lstdefinestyle{Euphoria}    {language=Euphoria}
\lstdefinestyle{Fortran}     {language=Fortran}
\lstdefinestyle{GCL}         {language=GCL}    
\lstdefinestyle{Go}          {language=Go}     
\lstdefinestyle{Gnuplot}     {language=Gnuplot}
\lstdefinestyle{Haskell}     {language=Haskell}
\lstdefinestyle{HTML}        {language=HTML}   
\lstdefinestyle{IDL}         {language=IDL}    
\lstdefinestyle{inform}      {language=inform} 
\lstdefinestyle{Java}        {language=Java}  
\lstdefinestyle{JS}          {language=JavaScript}  
\lstdefinestyle{JSC++}       {language=[C++]JSC}
\lstdefinestyle{JVMIS}       {language=JVMIS}  
\lstdefinestyle{ksh}         {language=ksh}  
\lstdefinestyle{Lisp}        {language=Lisp}
\lstdefinestyle{Logo}        {language=Logo}   
\lstdefinestyle{Lua}         {language=Lua}   
\lstdefinestyle{make}        {language=make} 
\lstdefinestyle{Mathematica} {language=Mathematica}
\lstdefinestyle{Matlab}      {language=Matlab}  
\lstdefinestyle{Mercury}     {language=Mercury} 
\lstdefinestyle{MetaPost}    {language=MetaPost}
\lstdefinestyle{Miranda}     {language=Miranda} 
\lstdefinestyle{Mizar}       {language=Mizar}   
\lstdefinestyle{ML}          {language=ML}   
\lstdefinestyle{Modelica}    {language=Modelica}
\lstdefinestyle{Modula-2}    {language=Modula-2}
\lstdefinestyle{MuPAD}       {language=MuPAD}   
\lstdefinestyle{NASTRAN}     {language=NASTRAN} 
\lstdefinestyle{Oberon-2}    {language=Oberon-2}
\lstdefinestyle{Objective C} {language=Objective C}
\lstdefinestyle{OCL}         {language=OCL}    
\lstdefinestyle{Octave}      {language=Octave} 
\lstdefinestyle{Oz}          {language=Oz}     
\lstdefinestyle{Pascal}      {language=Pascal} 
\lstdefinestyle{Perl}        {language=Perl}   
\lstdefinestyle{PHP}         {language=PHP}    
\lstdefinestyle{PL/I}        {language=PL/I}   
\lstdefinestyle{Plasm}       {language=Plasm}  
\lstdefinestyle{POV}         {language=POV}    
\lstdefinestyle{Prolog}      {language=Prolog} 
\lstdefinestyle{Promela}     {language=Promela}

%\lstdefinestyle{Protobuf2}   {language=[2]Protobuf} 
%\lstdefinestyle{Protobuf3}   {language=[3]Protobuf} 

\lstdefinestyle{Python}      {language=Python} 
\lstdefinestyle{R}           {language=R}      
\lstdefinestyle{Reduce}      {language=Reduce} 
\lstdefinestyle{Rexx}        {language=Rexx}   
\lstdefinestyle{RSL}         {language=RSL}    
\lstdefinestyle{Ruby}        {language=Ruby}   
\lstdefinestyle{S}           {language=S}      
\lstdefinestyle{SAS}         {language=SAS}    
\lstdefinestyle{Scilab}      {language=Scilab} 
\lstdefinestyle{sh}          {language=sh}     
\lstdefinestyle{SHELXL}      {language=SHELXL} 
\lstdefinestyle{Simula}      {language=Simula} 
\lstdefinestyle{SQL}         {language=SQL}    
\lstdefinestyle{tcl}         {language=tcl}    
\lstdefinestyle{TeX}         {language=TeX}    
\lstdefinestyle{VBScript}    {language=VBScript}
\lstdefinestyle{Verilog}     {language=Verilog}
\lstdefinestyle{VHDL}        {language=VHDL}   
\lstdefinestyle{VRML}        {language=VRML}   
\lstdefinestyle{XML}         {language=XML}    
\lstdefinestyle{XSLT}        {language=XSLT}  
%-------------------------------------------------------------
\usepackage[nodisplayskipstretch]{setspace} % espaciado entre ec. y texto
\usepackage{amsmath,bm}   % \bm: ecuaciones en negrita
\usepackage{units}        % \unit[VALOR]{UNIDAD}
%-----------------------------------------------------------------
%-----------------------------------------------------------------
% Bibliography
\usepackage[super,numbers,compress]{natbib}
\bibliographystyle{amsplain}
%\bibliographystyle{ksfh_nat}
%==============================================================
\pagestyle{empty}
