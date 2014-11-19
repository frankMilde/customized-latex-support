" LaTeX filetype
"	  Language: LaTeX (ft=tex)
"	Maintainer: Srinath Avadhanula
"		 Email: srinath@fastmail.fm

if !exists('s:initLatexSuite')
	let s:initLatexSuite = 1
	exec 'so '.fnameescape(expand('<sfile>:p:h').'/latex-suite/main.vim')

	silent! do LatexSuite User LatexSuiteInitPost
endif

silent! do LatexSuite User LatexSuiteFileType
 
" Customization Mon Nov 10 19:22:42 2014
:call IMAP('EAL', "\\begin{align}\<CR><++> &= <++>,\\nt\\\\\<CR><++> &= <++>,\\nt\\\\\<CR><++> &= <++>\<CR>\\label{eq:<++>}\<CR>\\end{align}<++>", 'tex')
"Framed Equation
:call IMAP('FEQ', "\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\% Equation \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\\begin{FramedEqn}\<CR><++>\\nt\<CR>\\end{FramedEqn}\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\% Equation \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\<CR>\\noindent\<CR><++> ", 'tex')
"Colorbox
:call IMAP('CB', "\\begin{center}\<CR>\\colorbox{hellgrau}{\<CR>\\begin{minipage}{0.9\\linewidth}\<CR>\\emph{<++>}\<CR>\\end{minipage}\<CR>}\<CR>\\end{center}\<CR><++> ", 'tex')
:call IMAP('INT', "\\int{\\!\\! \\dd^{<++>}\\;\\;<++>} ", 'tex')
:call IMAP('{}', "{<++>} <++> ", 'tex')
:call IMAP('LR', "\\left( <++> \\right) <++>", 'tex')
":call IMAP('`w', '\\omega', 'tex')
":call IMAP('`W', '\\Omega', 'tex')
:call IMAP('EQR', "Eq.\~\\eqref{eq:<++>} <++>", 'tex')
:call IMAP('FIGR', "Fig.\~\\ref{fig:<++>} <++>", 'tex')
:call IMAP('REF', "Ref.\~\\cite{<++>} <++>", 'tex')
:call IMAP('CITE', "[\\cite{<++>}] <++>", 'tex')
"Own figure env 1
:call IMAP('EF', "\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\% Start Figure \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\\begin{figure}[tb!]\<CR>\\begin{center}\<CR>\\includegraphics[width=\\textwidth]{figures\/<++>.pdf}\<CR>\\caption[<++>]{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{center}\<CR>\\end{figure}\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\%  End Figure  \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR><++> " ,'tex')
"Own figure env 2 with side caption
:call IMAP('CF',"\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\% Start Figure \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\\captionstyle{normal}\<CR>\\begin{figure}[tb!]\<CR>\\begin{minipage}{0.618\\textwidth}\<CR>\\begin{center}\<CR>\\includegraphics[width=0.7\\textwidth]{figures\/<++>.pdf}\<CR>\\end{center}\<CR>\\end{minipage}\<CR>\\begin{minipage}{0.382\\textwidth}\<CR>\\begin{center}\<CR>\\caption[<++>]{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{center}\<CR>\\end{minipage}\<CR>\\end{figure}\<CR>\\captionstyle{hang}\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\%  End Figure  \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR><++> ", 'tex')

:call IMAP('WF',"\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\% Start Figure \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\\begin{warpfigure}[15]{rH}{0.45\\textwidth}\<CR>\\includegraphics[width=0.45\\textwidth]{figures\/<++>.pdf}\<CR>\\caption[<++>]{<++>}\<CR>\\label{fig:<++>}\<CR>\\end{wrapfigure}\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR>\%\%\%  End Figure  \%\%\%\<CR>\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\%\<CR><++> ", 'tex')
