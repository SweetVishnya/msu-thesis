% Revision: 07-25-2007
% Revision History
%   07-10-2008 : Corrected Alignment of signature boxes on Masters/PhD Approval page
%   07-25-2007 : Corrected some spelling errors
%   05-16-2006 : Added etd option and moved most packages from class file to template
%   05-15-2006 : Initial version.
%
% Known bugs
%   Having a tiny bit of the abstract spill to second page defeats page number removal.
%   Workaround: make the abstract a little longer or a little shorter.
%
% The BYUPhys class is for producing theses and dissertations
% in the BYU department of physics and astronomy.  You can supply
% the following optional arguments in the square brackets to
% specify the thesis type:
%
%   senior  : Produces the senior thesis preliminary pages (default)
%   honors  : Produces the honors thesis preliminary pages
%   masters : Produces the masters thesis preliminary pages
%   phd     : Produces the PhD dissertation preliminary pages
%
% The default format is appropriate for printing, with blank pages
% inserted after the preliminary pages in twoside mode so you can
% send it directly to a two-sided printer. However, for ETD
% submission the blank pages need to be removed from the final output.
% The following option does this:
%
%   etd     : Produces an electronic copy with no blank pages in the preliminary section
%
% The rest of the class options are the same as the regular book class.
% A few to remember:
%
%   oneside : Produces single sided print layout (recommended for theses less than 50 pages)
%   twoside : Produces single sided print layout (the default if you remove oneside)
%
% The BYUPhys class provides the following macros:
%
%   \makepreliminarypages : Makes the preliminary pages
%   \clearemptydoublepage : same as \cleardoublepage but doesn't put page numbers
%                           on blank intervening pages
%   \singlespace          : switch to single spaced lines
%   \doublespace          : switch to double spaced lines
%
% ------------------------------------------------------------------------------------------------------
%
\NeedsTeXFormat{LaTeX2e} \ProvidesClass{BYUPhys}

% ---------------------------- declarations -------------------------
%
% These macros are used to declare arguments needed for the
% construction of the preliminary pages

% The year and month the degree is awarded
\newcommand{\University}[1]{\gdef\@University{#1}}
\newcommand{\Faculty}[1]{\gdef\@Faculty{#1}}
\newcommand{\Chair}[1]{\gdef\@Chair{#1}}
\newcommand{\Lab}[1]{\gdef\@Lab{#1}}

\newcommand{\GrText}[1]{\gdef\@GrText{#1}}
\newcommand{\AcadGroup}[1]{\gdef\@AcadGroup{#1}}
\newcommand{\AdvisorText}[1]{\gdef\@AdvisorText{#1}}
\newcommand{\ConsultantText}[1]{\gdef\@ConsultantText{#1}}

\newcommand{\ApprovalText}[1]{\gdef\@ApprovalText{#1}}
\newcommand{\ApprovalAText}[1]{\gdef\@ApprovalAText{#1}}
\newcommand{\ApprovalBText}[1]{\gdef\@ApprovalBText{#1}}

\newcommand{\DateText}[1]{\gdef\@DateText{#1}}

\newcommand{\Year}[1]{\gdef\@Year{#1}}
\newcommand{\Month}[1]{\gdef\@Month{#1}}
\newcommand{\City}[1]{\gdef\@City{#1}}

% The full name of the degree
\newcommand{\degree}[1]{\gdef\@degree{#1}}

% The name of this document (thesis/dissertation)
\newcommand{\docname}[1]{\gdef\@docname{#1}}

% First line of title
%\newcommand{\TitleTop}[1]{\gdef\@TitleTop{\mbox{\uppercase{#1}}}}
\newcommand{\TitleTop}[1]{\gdef\@TitleTop{\mbox{#1}}}
\newcommand{\TitleTopEng}[1]{\gdef\@TitleTopEng{\mbox{#1}}}

% Second line of title
\newcommand{\TitleMiddle}[1]{\gdef\@TitleMiddle{\mbox{#1}}}
\newcommand{\TitleMiddleEng}[1]{\gdef\@TitleMiddleEng{\mbox{#1}}}

% Third line of title
\newcommand{\TitleBottom}[1]{\gdef\@TitleBottom{\mbox{#1}}}
\newcommand{\TitleBottomEng}[1]{\gdef\@TitleBottomEng{\mbox{#1}}}

% Title page text
\newcommand{\TitlePageText}[1]{\gdef\@TitlePageText{#1}}

% Abstract text
\newcommand{\Abstract}[1]{\gdef\@Abstract{#1}}
\newcommand{\AbstractEng}[1]{\gdef\@AbstractEng{#1}}
\newcommand{\AbstractText}[1]{\gdef\@AbstractText{#1}}

% Acknowledgments text
\newcommand{\Acknowledgments}[1]{\gdef\@Acknowledgments{#1}}
\newcommand{\AcknowledgmentsText}[1]{\gdef\@AcknowledgmentsText{#1}}

% The author's name
\newcommand{\AuthorText}[1]{\gdef\@AuthorText{#1}}
\newcommand{\Author}[1]{\gdef\@Author{#1}}
\newcommand{\AuthorEng}[1]{\gdef\@AuthorEng{#1}}
\newcommand{\AuthorGenitiveCase}[1]{\gdef\@AuthorGenitiveCase{#1}}

% The name of the advisor
\newcommand{\Advisor}[1]{\gdef\@Advisor{#1}}
\newcommand{\AdvisorDegree}[1]{\gdef\@AdvisorDegree{#1}}

% The name of the consultant
\newcommand{\Consultant}[1]{\gdef\@Consultant{#1}}
\newcommand{\ConsultantDegree}[1]{\gdef\@ConsultantDegree{#1}}

% The name of the committee member 2
\newcommand{\MemberA}[1]{\gdef\@MemberA{#1}}

% The name of the committee member 3
\newcommand{\MemberB}[1]{\gdef\@MemberB{#1}}

% The name of the committee member 4
\newcommand{\MemberC}[1]{\gdef\@MemberC{#1}}

% The name of the committee member 5
\newcommand{\MemberD}[1]{\gdef\@MemberD{#1}}

% The name of the department chair
\newcommand{\DepRep}[1]{\gdef\@DepRep{#1}}

% The title of the department chair (allow for associate chair, etc.)
\newcommand{\DepRepTitle}[1]{\gdef\@DepRepTitle{#1}}

% The name of the department undergraduate coordinator
\newcommand{\UgradCoord}[1]{\gdef\@UgradCoord{#1}}

% The name of the dean
\newcommand{\Dean}[1]{\gdef\@Dean{#1}}

% The title of the dean
\newcommand{\DeanTitle}[1]{\gdef\@DeanTitle{#1}}

% The name of the honors dean
\newcommand{\HonorsDean}[1]{\gdef\@HonorsDean{#1}}

% Set default values for fields
\University{2010}
  \Year{2010}
  \Month{Month}
  \Author{Author}
  \TitleTop{Title}
%  \Abstract{Abstract text goes here.}
%  \Acknowledgments{Acknowledgment text goes here.}
%  \degree{Bachelor of Science}
  \docname{Master Thesis}
  \Advisor{Advisor}
  \MemberA{Committee Member A}
  \MemberB{Committee Member B}
  \MemberC{Committee Member C}
  \MemberD{Committee Member D}
  \DepRep{Department Chair Name}
  \DepRepTitle{Chair}
  \Dean{Dean Name}
  \DeanTitle{Associate Dean}
  \HonorsDean{Honors Dean Name}
  \UgradCoord{Department Ugrad Coordinator }

% ---------------------------- options ------------------------------

% A command to switch to single spaced lines
\newcommand{\singlespace}{\renewcommand{\baselinestretch}{1}\small\normalsize}

\newcommand{\oneandhalfspace}{\renewcommand{\baselinestretch}{1.33}\small\normalsize}

% A command to switch to double spaced lines
\newcommand{\doublespace}{\renewcommand{\baselinestretch}{1.66}\small\normalsize}

% A command pirated from chngpage.sty
\DeclareRobustCommand{\ch@ngetext}{%
  \setlength{\@colht}{\textheight}\setlength{\@colroom}{\textheight}%
  \setlength{\vsize}{\textheight}\setlength{\columnwidth}{\textwidth}%
  \if@twocolumn%
    \advance\columnwidth-\columnsep \divide\columnwidth\tw@%
    \@firstcolumntrue%
  \fi%
  \setlength{\hsize}{\columnwidth}%
  \setlength{\linewidth}{\hsize}%
}

% A command to make margins right for the initial single sided business.
\newcommand{\preliminarymargins}{%
    \addtolength{\textwidth}{-0.5in}%
    \addtolength{\evensidemargin}{0.5in}%
    \ch@ngetext%
    }

% A command to fix the margins after the initial single sided business.
\newcommand{\fixmargins}{%
    \addtolength{\textwidth}{0.5in}
    \addtolength{\evensidemargin}{-0.5in}
    \ch@ngetext%
}

% Define the preliminary section for a senior thesis.
% The senior option is essentially ignored since it is the default
  \newcommand{\makepreliminarypages}{
    \preliminarymargins
    \titlepage
    %\copyrightpage
    %\seniorapprovalpage
    \abstractpage
    \fixmargins
    \renewcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}
  }

% Define the honors thesis preliminary section if the 'honors' option is specified
\DeclareOption{honors}{
  \renewcommand{\makepreliminarypages}{
    \preliminarymargins
    \honorstitlepage
    \copyrightpage
    \seniorapprovalpage
    \abstractpage
%    \acknowledgmentspage
    \fixmargins
    \renewcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}
  }
}

% Changes to masters thesis preliminary section if the 'masters' option is specified
\DeclareOption{masters}{
  \degree{Master of Science}
  \docname{thesis}
  \renewcommand{\makepreliminarypages}{
    \preliminarymargins
    \titlepage
    \copyrightpage
    \masterapprovalpage
    \acceptancepage
    \abstractpage
%    \acknowledgmentspage
    \fixmargins
    \renewcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}
  }
}

% Changes to PhD preliminary section if the 'phd' option is specified
\DeclareOption{phd}{
  \degree{Doctor of Philosophy}
  \docname{dissertation}
  \renewcommand{\makepreliminarypages}{
    \preliminarymargins
    \titlepage
    \copyrightpage
    \phdapprovalpage
    \acceptancepage
    \abstractpage
%    \acknowledgmentspage
    \fixmargins
    \renewcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}
  }
}

% --------------------- Some commands to handle the single sided preliminary pages ------------------

% Define the '\clearemptydoublepage' command to clear pages but not number any blank pages inserted.
% This is taken from the BYUThesis.cls file
\let\cle@rdoublep@ge\cleardoublepage
\newcommand{\cle@remptydoublep@ge}{
  \clearpage
  \if@twoside
  \ifodd\c@page\else
  \fi\fi
  {\pagestyle{empty}\cle@rdoublep@ge}}
\newcommand{\clearemptydoublepage}{\cle@remptydoublep@ge}


% Create an abstract environment which is single sided, even in a double sided book.
% again, this was taken from BYUThesis.cls
\def\skip@bstr@ctp@ges{\relax}
\def\@@skip@bstr@ctp@ges{%
  \if@twoside
   \ifodd\c@page\else
    \vbox{\vbox to \vsize{}}
    \clearpage\fi
   \else
  \fi
  \afterpage{\skip@bstr@ctp@ges}
}
\newenvironment{abstractenv}{
   \def\skip@bstr@ctp@ges{\@@skip@bstr@ctp@ges}
   \afterpage{\skip@bstr@ctp@ges}
   \pagestyle{empty}
}

% Redefine above commands if etd option is specified.  The blank pages make printing nice,
% but they don't want them in the submitted PDF
%\DeclareOption{etd}{
%    \renewcommand{\clearemptydoublepage}{ \clearpage }
%    \renewenvironment{abstractenv}{\afterpage{\thispagestyle{empty}}\pagestyle{empty}}{}
%  }

% ------------------------ Load the class and needed packages ---------------------------------

% Load the book class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4,12pt]{article}

% The afterpage package is required to make single sided formal pages
% in a double sided environment
\RequirePackage{afterpage}

% Note: the hyperref package is required to make an appropriate ETD.
% However, we don't require it here since it is supposed to be the last
% package loaded and students may want to load other packages in the
% main tex file.  So that this class file doesn't crash if the student
% forgets to load hyperref, we have used the following commands below:
%
%   \providecommand\phantomsection{}
%   \providecommand\pdfbookmark[3][]{}
%
% These commands provide dummy versions of the macros, but won't
% bother the real versions if the hyperref package is loaded in the
% tex file.




% ---------------------------- main code ----------------------------

% Set the margins to BYU specifications for the single sided preliminary
% pages.  At the end of the \makepreliminarypages command we fix the margins
% to be appropriate alternating values for double sided printing (if selected).
% If the \makepreliminarypages macro is not run, this never gets fixed.
  \setlength{\marginparwidth}{0pt}
  \setlength{\marginparsep}{0pt}
  \setlength{\oddsidemargin}{0.3in}
  \setlength{\evensidemargin}{0in}
  \setlength{\textwidth}{6in}
  \setlength{\topmargin}{0in}
  \setlength{\headheight}{0.125in}
  \setlength{\headsep}{0.25in}
  \setlength{\textheight}{8.625in}
  \setlength{\footskip}{0.25in}
  \raggedbottom

% Redefine the Table of Contents to deal with some blank page
% and bookmarking issues relating to ETD submission
%\let\TEMPtableofcontents\tableofcontents
%\renewcommand{\tableofcontents}{
 % \clearemptydoublepage
  %\providecommand\phantomsection{} \phantomsection
  %\addcontentsline{toc}{chapter}{Оглавление}
  %\TEMPtableofcontents
%}

% Redefine the List of Figures to deal with some blank page
% and bookmarking issues
%\let\TEMPlistoffigures\listoffigures
%\renewcommand{\listoffigures}{
 % \providecommand\phantomsection{} \phantomsection
  %\addcontentsline{toc}{chapter}{List of Figures}
  %\TEMPlistoffigures
%}

% Redefine the Bibliography to deal with a bookmarking issues
\let\TEMPbibliography\bibliography
\renewcommand{\bibliography}{
  \cleardoublepage \phantomsection
  \TEMPbibliography
}



%---------------------------- The Preliminary Page Definitions --------------------------

% ============================== Title Page ===============================
	\renewcommand{\titlepage}{
	    \begin{center}
	    \thispagestyle{empty}
	    \providecommand\pdfbookmark[3][]{} \pdfbookmark[1]{\@TitlePageText}{bm:Title}
		\includegraphics[height=4cm,keepaspectratio]{./gzlogo.png}\\[0.1cm]
	    %\vspace*{0.375in}
	    \@University\\
	    \@Faculty\\
	    \@Chair\\
	    \ifdefined\@Lab{\scriptsize \@Lab\\[\baselineskip]}\fi
	    \vspace{2.5cm}
	    {\large \@Author \\[\baselineskip]
	    %\HRule \\[0.4cm]
	    \textbf{\@TitleTop}\\
	    \ifdefined\@TitleMiddle\textbf{\@TitleMiddle}\\\fi
	    \ifdefined\@TitleBottom\textbf{\@TitleBottom}\\\fi}
	    \vspace{1.5cm}
	    \@docname\\
	    %\HRule \\[1.5cm]
	    \normalsize
	    \vfill
	    \begin{flushright}
	    %\emph{\@AuthorText:\\}
	    %{\small \@GrText~\@AcadGroup\\}
	    %{\large \@Author \\[\baselineskip]}
	    \textbf{\@AdvisorText:\\}
	    {\large ~ \@AdvisorDegree~ \@Advisor\\}
	    \ifdefined\@Consultant
	        \textbf{\\\@ConsultantText:\\}
	        {\large ~ \ifdefined\@ConsultantDegree\@ConsultantDegree\fi~ \@Consultant\\}
	    \fi
	    \end{flushright}
	    \vfill

	    %\vskip0.667in
	    %\@degree \\
	    \vfill

	    \@City, \@Year \\[\baselineskip]
	    \end{center}
	    \cleardoublepage
	  }



% ============================== Honors Title Page ========================
\newcommand{\honorstitlepage}{
    \thispagestyle{empty}
    \begin{center}
    %\providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Title Page}{bm:Title}
    \vspace*{0.375in}
    \@TitleTop\\[\baselineskip]
    \@TitleBottom\\
    \vfill
    \@Author,
    \vfill
    %Submitted to Brigham Young University in partial fulfillment\\[\baselineskip]
    %of graduation requirements for University Honors\\[2\baselineskip]
    %Department of Physics and Astronomy\\[\baselineskip]
    %\@Month~\@Year
    \@City,~\@Year
    \vfill
    \end{center}
    \parbox[t]{2.75in}{
        Advisor: \@Advisor \\[.5\baselineskip]
        Signature: \hrulefill}
    \hfill
    \parbox[t]{2.75in}{
        Honors Dean: \@HonorsDean \\[.5\baselineskip]
        Signature: \hrulefill}
    \clearemptydoublepage
  }

% ======================== Copyright page ===============================
\newcommand{\copyrightpage}{
    \thispagestyle{empty}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Copyright}{bm:Copyright}
    \vspace*{\fill}
    \begin{center}
    Copyright \copyright\ \@Year~\@Author\\[\baselineskip]
    All Rights Reserved\\[5\baselineskip]
    \end{center}
    \vspace{1in}
    \vfill
    \clearemptydoublepage
  }

% =============================== Approval page =======================
\newcommand{\datebox}{
    \parbox[t]{1.5in}{
        \ \\[2\baselineskip]
        \rule{1.5in}{0.4pt}\\
        \@DateText
    }
}

\newcommand{\signaturebox}[1]{
    \parbox[t]{3.6in}{
        \ \\[2\baselineskip]
        \rule{3.6in}{0.4pt}\\
        #1
    }
}

\newcommand{\phdapprovalpage}{
    \thispagestyle{empty}
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Graduate Committee Approval}{bm:ComAp}
    \vspace*{0.375in}
    BRIGHAM YOUNG UNIVERSITY\\[3\baselineskip]
    GRADUATE COMMITTEE APPROVAL\\[5\baselineskip]
    of a \@docname~submitted by\\[\baselineskip]
    \@Author\\[2\baselineskip]
    \end{center}
    \noindent
    This dissertation has been read by each member of the following graduate committee
    and by majority vote has been found to be satisfactory.\\[\baselineskip]
    \datebox\hfill\signaturebox{\@Advisor, Chair}\\
    \datebox\hfill\signaturebox{\@MemberA}\\
    \datebox\hfill\signaturebox{\@MemberB}\\
    \datebox\hfill\signaturebox{\@MemberC}\\
    \datebox\hfill\signaturebox{\@MemberD}
    \vfill
    \clearemptydoublepage
  }

\newcommand{\masterapprovalpage}{
    \thispagestyle{empty}
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Graduate Committee Approval}{bm:ComAp}
    \vspace*{0.375in}
    BRIGHAM YOUNG UNIVERSITY\\[3\baselineskip]
    GRADUATE COMMITTEE APPROVAL\\[5\baselineskip]
    of a \@docname~submitted by\\[\baselineskip]
    \@Author\\[2\baselineskip]
    \end{center}
    \noindent
    This thesis has been read by each member of the following graduate committee
    and by majority vote has been found to be satisfactory.\\[\baselineskip]
    \datebox\hfill\signaturebox{\@Advisor, Chair}\\
    \datebox\hfill\signaturebox{\@MemberA}\\
    \datebox\hfill\signaturebox{\@MemberB}\\
    \vfill
    \clearemptydoublepage
  }

\newcommand{\seniorapprovalpage}{
    \thispagestyle{empty}
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Department Approval}{bm:DepAp}
    \vspace*{0.375in}
    \@University\\[3\baselineskip]
    {\bf \@ApprovalText}\\[5\baselineskip]
    \@docname~\@ApprovalAText\\[\baselineskip]
    {\em \@AuthorGenitiveCase}\\[2\baselineskip]
    \@ApprovalBText
    \\[\baselineskip]
    \end{center}
    \datebox\hfill\signaturebox{\@Advisor, \@AdvisorText}\\
    %\datebox\hfill\signaturebox{\@UgradCoord, Research Coordinator}\\
    %\datebox\hfill\signaturebox{\@DepRep, \@DepRepTitle}\\
    \vfill
    \clearemptydoublepage
  }

% ======================= Acceptance Page ============================
\newcommand{\acceptancepage}{
    \thispagestyle{empty}%
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{Acceptance Page}{bm:Accept}
    \vspace*{0.375in}
    BRIGHAM YOUNG UNIVERSITY\\[3\baselineskip]
    \end{center}%
    \noindent%
    As chair of the candidate's graduate committee, I have read the
    \@docname\ of \@Author \ in its final form and have found
    that (1) its format, citations, and bibliographical style are
    consistent and acceptable and fulfill university and department
    style requirements; (2) its illustrative materials including
    figures, tables, and charts are in place; and (3) the final
    manuscript is satisfactory to the graduate committee
    and is ready for submission to the university library.\\[2\baselineskip]
    \datebox\hfill\signaturebox{\@Advisor\\Chair, Graduate Committee}
    \vskip 0pt plus 2fill
    \noindent Accepted for the Department\par\hfill%
    \signaturebox{\@DepRep, \@DepRepTitle\\Department of Physics and
    Astronomy }{} \vfill \noindent Accepted for the College\par\hfill
    \signaturebox{\@Dean, \@DeanTitle \\
    College of Physical and Mathematical Sciences}
    \clearemptydoublepage
  }

% ========================= Abstract ===================================

\newcommand{\abstractpage}{
    \begin{abstractenv}
    \ifdefined\@Abstract
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[1]{\@AbstractText}{bm:Abstract}
    \vspace*{0.375in}
    {\bf \@AbstractText}\\[1\baselineskip]
    \@TitleTop
    \ifdefined\@TitleMiddle\\\@TitleMiddle\fi
    \ifdefined\@TitleBottom\\\@TitleBottom\fi\\[1\baselineskip]
    {\em \@Author}\\[\baselineskip]
    \end{center}
    \renewcommand{\baselinestretch}{1.33}\small\normalsize
    \@Abstract
    \cleardoublepage
    \fi

    \ifdefined\@AbstractEng
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[1]{Abstract}{bm:AbstractEng}
    \vspace*{0.375in}
    {\bf Abstract}\\[1\baselineskip]
    \@TitleTopEng
    \ifdefined\@TitleMiddleEng\\\@TitleMiddleEng\fi
    \ifdefined\@TitleBottomEng\\\@TitleBottomEng\fi\\[1\baselineskip]
    {\em \@AuthorEng}\\[\baselineskip]
    \end{center}
    \renewcommand{\baselinestretch}{1.33}\small\normalsize
    \@AbstractEng
    \cleardoublepage
    \fi

    \ifdefined\@Acknowledgments\acknowledgmentspage\fi

    \end{abstractenv}
  }

% ========================= Acknowledgments ==============================
\newcommand{\acknowledgmentspage}{
    \begin{center}
    \providecommand\pdfbookmark[3][]{} \pdfbookmark[1]{\@AcknowledgmentsText}{bm:Acknowledgments}
    \vspace*{0.375in}
    {\bf \@AcknowledgmentsText}\\[1\baselineskip]
    \end{center}
    \renewcommand{\baselinestretch}{1.33}\small\normalsize
    \@Acknowledgments
    \cleardoublepage
  }

\RequirePackage{float}

\newfloat{listing}{thp}{lol}
\floatname{listing}{\@ListingText}
\newcommand{\ListingText}[1]{\gdef\@ListingText{#1}}

\RequirePackage{algorithm}

\newcommand{\AlgorithmText}[1]{\gdef\@AlgorithmText{#1}}
\renewcommand{\ALG@name}{\@AlgorithmText}

\RequirePackage{algorithmicx} % Для записи алгоритмов в псевдокоде
\RequirePackage[noend]{algpseudocode}
\algnewcommand{\IfThenElse}[3]{% \IfThenElse{<if>}{<then>}{<else>}
  \State \algorithmicif\ #1\ \algorithmicthen\ #2\ \algorithmicelse\ #3}

\RequirePackage{titlesec}
\RequirePackage[unicode, hidelinks]{hyperref}
\hypersetup{colorlinks=false}

\RequirePackage{cite}

\RequirePackage{bookmark}

\newcommand{\PDFTitle}{\@Author~-~\@TitleTop\ifdefined\@TitleMiddle~\@TitleMiddle\fi\ifdefined\@TitleBottom~\@TitleBottom\fi}
\newcommand{\PDFAuthor}{\@Author}
