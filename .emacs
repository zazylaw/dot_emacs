;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs customizations
;;
;; To use this:
;;  - byte compile this file into .emacs-source.elc
;;    i.e. go into the Emacs-Lisp menu and select "Byte Compile This
;;    File"
;;  - in your .emacs file put the line
;;      (load-file "~/.emacs-source.elc")
;;    to load the byte compiled version of this.  This reduces Emacs'
;;    start
;;    up time.
;;
;; Here is a command that can be used in Windows
;;
;;   C:\<emacs_dir>\runemacs.exe -geometry 100x60+420+40 -fn "-raster-Fixedsys-normal-r-normal-normal-12-90-96-96-c-80-iso8859-15"
;;
;; Here is the command I'm currently using:
;;
;; C:\emacs-21.3\bin\runemacs.exe -geometry 98x59+460 ; 98 == width, 59 == height
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ****************************************************************************
;;
;;            Variable Preferences
;;
;; These are the variables used to setup the initial emacs window.
;;

(setq zazylaws-fill-column (- 80 1))    ; My preferred column width
(setq zazylaws-comment-column 40)       ; My preferred commenting column

(setq-default
 fill-column zazylaws-fill-column)      ; The width of the screen
(setq-default
 comment-column zazylaws-comment-column); The commenting column

(setq zazylaws-x-frame-position 240)    ; The emacs starting frame X coordinate
(setq zazylaws-y-frame-position 30)     ; The emacs starting frame Y coordinate
(setq zazylaws-frame-width 80)          ; The emacs starting frame width
(setq zazylaws-frame-height 40)         ; The emacs starting frame height

(setq zazylaws-font "10x20")            ; The font I like to use
(setq system-name "")                   ; Hostname

;; ***************************************************************************

(set-time-zone-rule "EST5CDT")          ; Set the time zone to Easten Standard

(put 'upcase-region 'disabled nil)      ; Allows the upcase-region command to
                                        ; be run in all sessions

;; Backups, Auto-Save, and Versioning
(setq make-backup-files t)              ; If t, create a backup version of the
                                        ; current file before saving it for the
                                        ; first time.
(setq backup-by-copying t)              ; If t, create backup files by copying
                                        ; rather than renaming the file being
                                        ; saved to a backup version. The
                                        ; default is renaming, which is more
                                        ; efficient. Copying is slightly safer;
                                        ; for example, a disk crash during a
                                        ; copy shouldn't hurt you, whereas a
                                        ; very badly timed crash during a mv
                                        ; may destry your backup file.
(setq version-control t)                ; If t, create numbered versions of
                                        ; files as backups (with names of the
                                        ; form "filename~N~"). If nil, only do
                                        ; this for files that have numbered
                                        ; version already. If 'never (note the
                                        ; leading single quote), never make
                                        ; numbered versions.
(setq kept-new-versions 8)              ; Number of latest version of a file to
                                        ; keep when a new numbered backup is
                                        ; made.
(setq kept-old-versions 4)              ; Number of oldest version of a file to
                                        ; keep when a new numbered backup is
                                        ; made.
(setq delete-old-versions nil)          ; If t, delete excess versions (not
                                        ; those kept according to the above
                                        ; variables) withous asking for
                                        ; confirmation first. If t, ask for
                                        ; confirmation first. If any other
                                        ; value, don't delete excess versions.
(setq auto-save-default t)              ; If t, do auto-saving of every file
                                        ; visited.
(setq auto-save-visited-file-name nil)  ; If t, auto-save to the file being
                                        ; visited rather than to a special
                                        ; auto-save file.
(setq auto-save-interval 400)           ; Number of keystrokes between
                                        ; auto-saving; if 0, turn off
                                        ; auto-saving.
(setq auto-save-timeout 60)             ; Length of time of inactivity after
                                        ; which Emacs auto-saves. If nil or 0,
                                        ; turn off this feature.
(setq buffer-offer-save nil)            ; Non-nil means offer to save the
                                        ; current buffer wehn exiting Emacs,
                                        ; even when the buffer is not a file.

(setq backup-directory-alist '(("." . "~/.emacs-backup"))) ; ... here

;; Searching and Replacing
(setq-default case-fold-search nil)     ; If non-nil, treat upper- and
                                        ; lowercase letters as the same when
                                        ; searching.
(setq-default case-replace t)           ; If non-nil, preserve the original
                                        ; case of letters when doing replaces
                                        ; (even if case-fold-search is on).
(setq search-upper-case 'not-yanks)     ; If non-nil, uppercase letter in
                                        ; search strings defeat
                                        ; case-fold-search (i.e., force search
                                        ; to be case-sensitive). The symbol
                                        ; 'not-yanks means convert uppercase
                                        ; letters in yanked text to lowercase.
(setq search-exit-option t)             ; If non-nil, any control character
                                        ; other than those defined in
                                        ; incremental seach (DEL, LINEFEED,
                                        ; C-q, C-r, C-s, C-w, C-y) exits
                                        ; search.
(setq search-slow-speed 1200)           ; If terminal is communicating at this
                                        ; speed or slower, use slow-style
                                        ; incremental search, in which a small
                                        ; window shows partial search results.
(setq search-slow-window-lines 1)       ; Height, in lines, of the window used
                                        ; for slow-speed search. If number is
                                        ; negative, put the window at the top
                                        ; instead of the bottom of the screen.
(setq search-highlight t)               ; If non-nil, highlight partial search
                                        ; matches. Works on X Window System
                                        ; displays and other that support
                                        ; highlighting.
(setq query-replace-highlight t)        ; If non-nil, highlight, matches in
                                        ; query-replace mode. Works on X Window
                                        ; System displays and others that
                                        ; support highlighting.


;; Display
(setq next-screen-context-lines 2)      ; Retain this many lines when scrolling
                                        ; forward or backward by C-v or M-v.
(setq scroll-step 0)                    ; When moving the cursor vertically out
                                        ; of the current window, scroll this
                                        ; many lines forward or backward. If 0,
                                        ; scroll enough lines to place the
                                        ; cursor at the center of the window
                                        ; after scrolling.
(setq hscroll-step 0)                   ; When moving the cursor horizontally
                                        ; out of the current window, scroll
                                        ; this many columns left or right. If
                                        ; 0, scroll enough lines to place the
                                        ; cursor at the center of the window
                                        ; after scrolling.
(setq tab-width 8)                      ; Width of tab steps; when set, it
                                        ; becomes local to the current buffer.
(setq truncate-lines nil)               ; If non-nil, do not wrap long lines;
                                        ; instead, truncate them and use $ to
                                        ; show that the line continues
                                        ; off-screen.
(setq truncate-partial-width-windows t) ; If non-nil, truncate long lines (as
                                        ; above) in all windows that are not
                                        ; the full width of the display.
(setq window-min-height 4)              ; Minimum allowable height of windows
                                        ; (in lines).
(setq window-min-width 10)              ; Minimum allowable width of vertically
                                        ; split windows (in columns).
(setq split-window-keep-point t)        ; When splitting windows, non-nil means
                                        ; keep point at the same place in both
                                        ; new windows. If nil, choose new
                                        ; location of point so as to minimize
                                        ; redrawing (good fro slow displays).
(setq resize-minibuffer-mode nil)       ; If non-nil, allow minibuffer to
                                        ; increase height to fit all of its
                                        ; contents.
(setq
 resize-minibuffer-window-exactly t)    ; Change size of minibuffer window
                                        ; dynamically so that it is exactly
                                        ; large enough to display its messages.
(setq resize-minibuffer-frame nil)      ; If non-nil, allow minibuffer frame
                                        ; (in X Window System displays) to
                                        ; change height.
(setq
 resize-minibuffer-frame-exactly t)     ; Change size of the minibuffer frame
                                        ; (in X Window System displays)
                                        ; dynamically so that it is exactly
                                        ; large enough to display its messages.
(setq
 resize-minibuffer-window-max-height
 nil)                                   ; Maximum size the minibuffer can grow
                                        ; to in resize-minibuffer-mode; under
                                        ; the X Window System, if less than 1
                                        ; or not a number, the limit is the
                                        ; height of the minibuffer frame.
(setq ctl-arrow t)                      ; Non-nil means display control
                                        ; characters using ^X, where X is the
                                        ; letter being "controlled." Otherwise,
                                        ; use octal (base 8) ASCII notation for
                                        ; display--for example, C-h appears as
                                        ; \010 in octal.
(setq display-time-day-and-date nil)    ; If non-nil, ESC-x display-time RETURN
                                        ; will also show the day and date.
(setq display-time-24hr-format t)       ; Non-nil indicates time should be
                                        ; displayed as hh:mm, 0 <= hh <= 23.
(setq line-number-mode t)               ; If non-nil, display the line number
                                        ; on the mode line.
(setq
 line-number-display-limit 10000000)    ; Maximum size of buffer (in
                                        ; characters) for which line numbers
                                        ; should be displayed.
(setq column-number-mode t)             ; If non-nil, display the column number
                                        ; on the mode line.
(setq visible-bell t)                   ; If non-nil, "flash" the screen
                                        ; instead of beeping when necessary.
(setq track-eol nil)                    ; If non-nil, whenever the cursor is at
                                        ; the end of the line, "stick" to the
                                        ; end of the line when moving the
                                        ; cursor up or down; otherwise, stay in
                                        ; the column where the cursor is.
(setq blink-matching-paren t)           ; If non-nil, blink matching open
                                        ; parenthesis-type character when a
                                        ; corresponding close parenthesis is
                                        ; typed.
(setq
 blink-matching-paren-distance 51000)   ; Maximum number of characters to
                                        ; search through to find a matching
                                        ; open parenthesis character when a
                                        ; close parenthesis is typed.
(setq blink-matching-delay 1)           ; Number of seconds to pause when
                                        ; blinking a matching parenthesis.
(setq echo-keystrokes 1)                ; Echo prefixes for unfinished commands
                                        ; (e.g., ESC-) in minibuffer after user
                                        ; pauses for this many seconds; 0 means
                                        ; don't do echoing at all.
(setq insert-default-directory t)       ; If non-nil, insert the current
                                        ; directory in the minibuffer when
                                        ; asking for a filename.
(setq inverse-video nil)                ; If non-nil, use reverse video for the
                                        ; entire display (normal video for mode
                                        ; lines).
(setq mode-line-inverse-video t)        ; Non-nil means use reverse video for
                                        ; mode lines.
(setq highlight-nonselected-windows t)  ; If non-nil, highlight regions in
                                        ; windows other than the one currectly
                                        ; selected; applies to X Window System
                                        ; displays and others that support
                                        ; highlighting.
(setq mouse-scroll-delay 0.25)          ; Delay, in seconds, between screen
                                        ; scrolls when mouse is clicked and
                                        ; dragged from inside a window to
                                        ; beyond its borders. 0 means scroll as
                                        ; fast as possible.
(setq mouse-scroll-min-lines 1)         ; Scroll at least this many lines when
                                        ; mouse is clicked and dragged up or
                                        ; down beyond a window.
(setq default-major-mode 'text-mode)    ; Default mode for new buffers, unless
                                        ; set by virtue of the filename; when
                                        ; setting this variable, remember to
                                        ; precede the mode name with a single
                                        ; quote (the value is a symbol).
(setq left-margin 0)                    ; Number of columns to indent when
                                        ; typing C-j in fundamental mode and
                                        ; text mode.
(setq indent-tabs-mode nil)             ; If non-nil, allow the use of tab
                                        ; characters (as well as spaces) when
                                        ; indenting with C-j.
(setq find-file-run-dired t)            ; When visiting a file, run dired if
                                        ; the filename is a directory, and this
                                        ; is non-nil.
(setq dired-kept-versions 2)            ; When cleaning a directory in Dired,
                                        ; keep this many versions of files.
(setq pop-up-frames nil)                ; Give new buffers their own frames.


;; Text Editing
(setq sentence-end-double-space nil)    ; If non-nil, do not treat single
                                        ; spaces after periods as ends of
                                        ; sentences.
(setq paragraph-separate "^^L\\|$")     ; Regular expressions that matches
                                        ; beginnings of lines that separate
                                        ; paragraphs.
(setq paragraph-start "^^L\\|$")        ; Regular expression that matches
                                        ; beginnings of lines that start or
                                        ; separate paragraphs.
(setq page-delimiter "^^L")             ; Regular expression that matches page
                                        ; breaks.
(setq tex-default-mode 'latex-mode)     ; Mode to invoke when creating a file
                                        ; that could be either TeX or LaTeX.
(setq tex-offer-save t)                 ; If non-nil, offer to save any unsaved
                                        ; buffers before running TeX.
(setq tex-show-queue-command
      "echo IO Counter                  ; lpq -Plw; echo MC342; lpq -Pmc342")
                                        ; Character string used as command to
                                        ; show the print queue with C-c C-q in
                                        ; TeX mode.
(setq tex-directory ".")                ; Directory for TeX to put temporary
                                        ; files in; default is the current
                                        ; directory.
(setq selective-display-ellipses t)     ; If t, display "..." in place of
                                        ; hidden text in outline mode;
                                        ; otherwise don't display anything.
(setq transient-mark-mode t)            ; Turn on highlighting of region


;; Completion
(setq completion-auto-help t)           ; If non-nil, provide help if a
                                        ; completion (via TAB or RETURN in
                                        ; minibuffer) is invalid or ambiguous.
(setq completion-ignore-case nil)       ; If non-nil, ignore case distinctions
                                        ; when doing completion.


;; Miscellaneous
(setq kill-ring-max 80)                 ; Keep n pieces of deleted text in the
                                        ; kill ring before deleting oldest
                                        ; kills.
(setq require-final-newline t)          ; If a file being saved is missing a
                                        ; final LINEFEED: nil means don't add
                                        ; one; t means add one automatically;
                                        ; otherwise ask whether to add a
                                        ; LINEFEED.
(setq next-line-add-newlines nil)       ; If non-nil, next-line (C-n or down
                                        ; arrow) inserts newlines when at the
                                        ; end of the buffer, rather than
                                        ; signalling error.
;;(setq-default
;; auto-fill-function 'do-auto-fill)      ; Turn on auto-fill for all modes
(setq-default
 auto-fill-function nil)                ; Turn on auto-fill for all modes


;; Emacs colours
(set-background-color "black")          ; Sets the background colour
(set-foreground-color "white")          ; Sets the foreground colour
(set-cursor-color "forestgreen")        ; Sets the cursor colour

;; File and program paths
(setq compile-command "make")           ; The emacs compile command
(setq ange-ftp-ftp-program-name "ftp")
(setq diff-command "\"c:/Program Files/Beyond Compare/1.9f/Beyond32.exe\"")
(setq diff-switches "")

(setq ediff-diff-program "c:/Beyond32.exe")
;;(setq ediff-diff-program diff-command)
(setq ediff-diff-options nil)

(setq ange-ftp-netrc-filename "c:\.netrc")
(setq dired-listing-switches "-al")     ; Options passed to the ls command for
                                        ; generating dired lsting; should
                                        ; contain at least "-l".
;(setq shell-file-name "/bin/bash")     ; Filename of shell to run with
                                        ; functions that use one, such as
                                        ; list-directory, dired, and compile;
                                        ; taken from value of the UNIX
                                        ; environment variable SHELL.
(setq tex-run-command "tex")            ; Charater string used as a command to
                                        ; run TeX in a subprocess on a file in
                                        ; TeX mode.
(setq latex-run-command "latex")        ; String used as a command to run LaTeX
                                        ; in a subprocess.
(setq slitex-run-command "slitex")      ; String used as a command to run
                                        ; SliTeX in a subprocess.
(setq tex-dvi-print-command "lpr -d")   ; Character string used as a command to
                                        ; print a file in TeX mode with C-c
                                        ; C-p.

(setq tex-dvi-view-command "yap")       ; Character string used as command to

;;(setq tex-dvi-view-command "xdvi")    ; Character string used as command to
                                        ; view a .dvi TeX output file with C-c
                                        ; C-v; usually set to xdvi on X Windows
                                        ; systems.


;; Startup functions
(menu-bar-mode t)                       ; Put a menu bar onto the emacs screen
(display-time)                          ; Display the time in all modes
;;(set-frame-position                   ; The position that emacs starts in
;; (selected-frame)                     ; when it is first loaded.
;; zazylaws-x-frame-position
;; zazylaws-y-frame-position)
;;(set-frame-height
;; (selected-frame) zazylaws-frame-height) ; The initial height of emacs
;;(set-frame-width
;; (selected-frame) zazylaws-frame-width)  ; The initial width of emacs


;; Set up some f-key shortcuts
(global-set-key [f1]    'help)
(global-set-key [S-f1]  'man)
(global-set-key [f2]    'save-buffer)
(global-set-key [f3]    'find-file)
(global-set-key [f4]    'kill-buffer)

(global-set-key [f5]    'compile)
(global-set-key [f6]    'first-error)
(global-set-key [f7]    'previous-error)
(global-set-key [f8]    'next-error)

(global-set-key [f9]    'search-forward-regexp)
;;(global-set-key [f9]    'new-frame)
;;(global-set-key [S-f9]  'delete-frame)
;;(global-set-key [f10]   'split-window-vertically)
;;(global-set-key [S-f10] 'delete-other-windows)
;;(global-set-key [f11]   'undo)
;;(global-set-key [f12]   'other-window)
;;(global-set-key [S-f12] 'delete-window)

;; ****************************************************************************
;;
;;            ange-ftp
;;

(require 'dired)
(require 'ange-ftp)

;; The folder for temporary ange-ftp files

;; zz Dec2013 (defvar ange-ftp-tmp-name-template
;; zz Dec2013  (concat (expand-file-name (getenv "TEMP")) "/ange-ftp"))


;; ****************************************************************************
;;
;;            General Stuff
;;

(defun ascii-table ()
  "Print the ascii table. Based on a defun by Alex Schroeder <asc@bsiag.com>"
  (interactive)
  (switch-to-buffer "*ASCII*")
  (erase-buffer)
  (insert (format "ASCII characters up to number %d.\n" 254))
  (let ((i 0))
    (while (< i 254)
      (setq i (+ i 1))
      (insert (format "%4d %c\n" i i))))
  (beginning-of-buffer)
  )


;; Major mode command symbol to use for the initial *scratch* buffer.
(defconst initial-major-mode 'lisp-interaction-mode)


;; Allow LISP to be run in the minibuffer
(put 'eval-expression 'disabled nil)


;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)


;; Set titles for frame and icon (%f == file name, %b == buffer name)
(setq-default frame-title-format (list "EMACS: %f"))
(setq-default icon-title-format "EMACS - %b")


;; Strip the C-M's from the output when in shell mode.
(add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)

;; Define which file extensions/suffixes belong to which modes
(add-to-list 'auto-mode-alist '("\\.tex$"        . latex-mode))
(add-to-list 'auto-mode-alist '("\\.html+$"      . html-mode))
(add-to-list 'auto-mode-alist '("\\.h$"          . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp$"        . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp$"        . c++-mode))
(add-to-list 'auto-mode-alist '("\\.c$"          . c-mode))
(add-to-list 'auto-mode-alist '("\\.c\d$"        . c++-mode))
(add-to-list 'auto-mode-alist '("\\.C$"          . c++-mode))
(add-to-list 'auto-mode-alist '("\\.t$"          . c++-mode))
(add-to-list 'auto-mode-alist '("\\.i$"          . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp$"        . c++-mode))
(add-to-list 'auto-mode-alist '("\\.scenario$"   . scenario-mode)) ;; Here we go, yo!
(add-to-list 'auto-mode-alist '("\\.tl$"         . scenario-mode))
(add-to-list 'auto-mode-alist '("\\.cfg$"        . scenario-mode))
(add-to-list 'auto-mode-alist '("\\.rexx$"       . rexx-mode))
(add-to-list 'auto-mode-alist '("\\.mak$"        . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.Makefile\\." . makefile-mode))
(add-to-list 'auto-mode-alist '("makefile\\."    . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.include$"    . c-mode))

;; Non-standard file extensions (ie. my own preferences)
(add-to-list 'auto-mode-alist '("\\.profile$"  . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.aliases$"  . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.login$"    . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.*rc$"      . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bash*$"    . shell-script-mode))

(add-to-list 'auto-mode-alist '("\\.xsl*$"     . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.xsd*$"     . sgml-mode))
;;(add-to-list 'auto-mode-alist '("\\.emacs$"    . emacs-lisp-mode))

;;(add-to-list 'auto-mode-alist '("setmontana"   . shell-script-mode))
(add-to-list 'auto-mode-alist '("m-\\."          . shell-script-mode))


;; Add some file extensions to ingnore when completing filenames
(setq completion-ignored-extensions
      (cons ".class" completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".exe"   completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".o"     completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".dbg"   completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".out"   completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".dvi"   completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".ps"    completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".aux"   completion-ignored-extensions)
      completion-ignored-extensions
      (cons ".log"   completion-ignored-extensions)
      )


;; Add the directory ".lispcode" to the load-path
(setq load-path (append load-path (list "~/lisp")))
(setq load-path (append load-path (list "~/lisp/efs-1.20/")))
(setq load-path (append load-path (list "~/lisp/dired-7.10/")))
(setq load-path (append load-path (list "~/lisp/nethack")))

;; If you want to add the currect directory to load path, uncomment this line:
;;(setq load-path (append load-path (list nil)))

;;(setq load-path (append load-path (list "~/emacs-21.2/w3-4.0pre.47/lisp/")))
;;(require 'w3-auto)


;; Make backup files in a specific directory rather than scattered around all
;; over the filesystem.
(defun make-backup-file-name (file-name)
  "Create the non-numeric backup file name for `file-name'."
  (require 'dired)
  (if (file-exists-p "c:\emacs_backups")
      (concat (expand-file-name "c:\emacs_backups")
              (dired-replace-in-string "/" "_" file-name))
    (concat file-name "~")))


;; ****************************************************************************
;;
;;            Keyboard Remapping
;;
;; Set up keyboard-translate-table as a 128-byte string, and initialize this
;; string for 1-1 mapping. Later, we can easily remap a key without wondering
;; if its entry exists. This preliminary step is needed for swapping C-h and
;; DEL, and also for reassigning C-s and C-q to fall in line with someone's
;; flow control.

(setq keyboard-translate-table (make-string 128 0))
(let ((i 0))
  (while (< i 128)
    (aset keyboard-translate-table i i)
    (setq i (1+ i))))

;; Example of how to switch C-h and DEL
;;(aset keyboard-translate-table ?\C-h ?\177)
;;(aset keyboard-translate-table ?\177 ?\C-h)


;; The two "set" commands below might only work in 21.1 and up

;; This is how you set the C-BACKSPACE/C-backspace key to be anything you want
;;(global-set-key "\C-?"    'anything)
;;(global-set-key "\C-?"    'backward-kill-char)
(global-set-key "\C-?"    'backward-delete-char-untabify)

;; This is how you set the C-DEL/C-del key to be anything you want (for some
;; STUPID reason, only works locally)
;;(local-set-key "<C-delete>" 'backward-kill-word)
;;(global-set-key (kbd "<C-delete>") 'backward-kill-word)
(global-set-key (kbd "<C-delete>") 'backward-kill-word)

;;(global-set-key "\C-l" 'hilit-recenter)

;; Lets you define [delete] to be the delete key
;(define-key function-key-map [delete] [127])

;; Lets you set the delete key to do what you want
;(global-set-key [delete] 'backward-kill-word)


;; ****************************************************************************
;;
;;            Terminal Support
;;

;; IMPORTANT: In order for your custom terminal definitions to be enabled, the
;; following line must be uncommented.
(setq term-setup-hook 'my-term-setup)


(defun my-term-setup ()
  "This executes the personal customizations for the terminal."
  (interactive)

  ;; Get the terminal type and store in variable term-type.
  (defvar term-type (getenv "TERM")
    "variable for the current terminal type")


  ;; If vt100 or emulator, enable arrow and function keys. And any other key
  ;; customizations you want.
  (if ( not ( or (string= term-type "vt100")
                 (string= term-type "xterm")
                 (string= term-type "aixterm")
                 (string= term-type "vt102")
                 (string= term-type "vt200")
                 (string= term-type "vt220")))
      ()

    ;; If you want to use the ESC [ sequences, then uncomment the following
    ;; enable-arrow-keys command. Check to see what sequences your keys are
    ;; sending. Note that this command will disable the backward-paragraph
    ;; command which is normally bound to the ESC [ key sequence.
    (enable-arrow-keys)

    );; End of vt100 customizations

  );; End of my-term-setup


(defun enable-arrow-keys ()
  "Enable the use of the VT100 arrow keys for cursor motion. Because of the
nature of the VT100, this unavoidably breaks the standard Emacs command ESC [.
Therefore, it is not done by default, but only if you give this command."
  (interactive)
  )


;; ****************************************************************************
;;
;;            Flow Control
;;
;; If in your system C-s and C-q are taken for the purposes of flow-control,
;; follow the advice in GNU Emacs Lisp Reference Manual, Sections 33.4 and
;; 33.6. First tell Emacs that C-s and C-q have a flow-control role, and then
;; remap two other keys as C-s and C-q

;;(set-input-mode nil t)
;;cbreak mode - C-s, C-q are flow control

;; Remap C-\ to C-s and C-^ to C-q.
;;(aset keyboard-translate-table ?\C-\\ ?\C-s)
;;(aset keyboard-translate-table ?\C-^  ?\C-q)


;; ****************************************************************************
;;
;;            Fonts and Highlighting
;;
;;(turn-on-font-lock)                   ; Turn on syntax highlighting for all
                                        ; modes
(global-font-lock-mode t)               ; Turn on syntax highlighting in all
                                        ; modes

;; Set the default font that emacs starts with
;;(set-default-font zazylaws-font)



;; These function seem to work in all font-lock supported buffers.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((((class color) (background dark)) (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "red"))))
 '(font-lock-constant-face ((((class color) (background dark)) (:foreground "Aquamarine"))))
 '(font-lock-function-name-face ((t (:foreground "cyan"))))
 '(font-lock-keyword-face ((t (:foreground "RoyalBlue"))))
 '(font-lock-string-face ((t (:foreground "orange"))))
 '(font-lock-type-face ((t (:foreground "hotpink"))))
 '(font-lock-variable-name-face ((((class color) (background dark)) (:foreground "LightGoldenrod"))))
 '(font-lock-warning-face ((((class color) (background dark)) (:bold t :foreground "hotpink"))))
 '(modeline ((t (:inverse-video nil :foreground "black" :background "lightblue"))))
 '(region ((t (:foreground "black" :background "blue")))))

;; Turn on the hilit19 syntax highlighting
;; zz - Dec 17, 2013 - New emacs install, seems hilit19 is deprecated,
;; recommended to use "M-x font-lock-mode RET" instead.
;; (cond (
;;        window-system
;;        (setq hilit-mode-enable-list  '(not text-mode)
;;              hilit-background-mode   'light
;;              hilit-inhibit-hooks     nil
;;              hilit-inhibit-rebinding nil)
;;        (require 'hilit19)

;; This helps define the table that gives the *FINAL* colours to be used when
;; hilighting a buffer. When you hit C-l to "recolour" a buffer, these values
;; will be used.
;; (hilit-translate comment         'red
;;                  define          'ForestGreen-bold
;;                  defun           'blue-bold
;;                  decl            'RoyalBlue
;;                  type            'hotpink
;;                  keyword         'RoyalBlue
;;                  label           'red-underline
;;                  ;;string        'grey40
;;                  string          'orange
;;                  struct          'white-bold
;;                  glob-struct     'magenta
;;                  named-param     'DarkGoldenrod
;;                  crossref        'DarkGoldenrod
;;                  formula         'Goldenrod
;;                  active-error    'pink-bold
;;                  error           'red-bold
;;                  warning         'blue-italic
;;                  rule            'blue-bold-underline
;;                  ;;msg-subject     'blue-bold
;;                  ;;msg-from        'purple-bold
;;                  ;;msg-header      'firebrick-bold
;;                  ;;msg-separator   'black/tan-bold
;;                  ;;msg-quote       'ForestGreen
;;                  summary-seen    'grey40
;;                  summary-killed  'grey50
;;                  summary-Xed     'OliveDrab2
;;                  summary-deleted 'firebrick
;;                  summary-unread  'RoyalBlue
;;                  summary-new     'blue-bold
;;                  summary-current 'default/skyblue-bold
;;                  dired-directory 'blue-bold
;;                  dired-link      'firebrick
;;                  dired-ignored   'ForestGreen
;;                  dired-deleted   'red-bold
;;                  dired-marked    'purple
;;                  )

;;        ))





;; ****************************************************************************
;;
;;            JDE Stuff
;;

;; JDE stuff


;; ****************************************************************************
;;
;;            RMAIL stuff
;;



;; ****************************************************************************
;;
;;            Indenting and Commenting modes
;;
(defun zazylaws-c-and-c++-preferences ()
  "The custom indentations that I like for C and C++ modes, as well as certain
functions to be run in these modes"
  ;;(setq comment-column
  ;;zazylaws-comment-column)               ; Override the comment column

  ;; Stupid CMS!!!
  ;;(setq comment-column 36)
  (setq comment-column 40)

  ;;(setq fill-column 71)
  (setq fill-column 79)

  ;;  (setq fill-column
  ;;zazylaws-fill-column)          ; Override the screen width



  ;; Set the C++ extra types to be the same as the C types
  (setq c++-font-lock-extra-types c-font-lock-extra-types)



  ;; Turn off italic comments
  ;;(make-face-unitalic 'firebrick-italic)

  ;; The number of spaces offset for all level of indentation
  ;;(setq-default c-basic-offset 7)

  ;; Possible commenting modes: CC-MODE, GNU, K&R, BSD, Stroustrup, Whitesmith,
  ;; Ellemtel, Java (The function z-set-indents is my own indenting style)
  ;;(c-set-style "cc-mode"); Indenting style
  ;;(z-set-indents)

  ;;(c-toggle-auto-state 0)             ; Automatic CR after `}' and `;'
  ;;(c-toggle-auto-hungry-state 1)      ; White-space eating del
  )





;; functions to be called when c mode is entered
(add-hook 'c-mode-hook
          '(lambda ()
             (zazylaws-c-and-c++-preferences)
             ))


;; Functions to be called when C++ mode is entered
(add-hook 'c++-mode-hook
          '(lambda ()
             (zazylaws-c-and-c++-preferences)
             ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Only use spaces for indentation
;; Stolen from http://www.bloomington.in.us/~brutt/emacs-c-dev.html

(require 'cc-mode)
(defun my-build-tab-stop-list (width)
  (let ((num-tab-stops (/ 80 width))
     (counter 1)
     (ls nil))
    (while (<= counter num-tab-stops)
      (setq ls (cons (* width counter) ls))
      (setq counter (1+ counter)))
    (set (make-local-variable 'tab-stop-list) (nreverse ls))))
(defun my-c-mode-common-hook ()
  (setq tab-width c-basic-offset) ;; change this to taste, this is what K&R uses :)
  (my-build-tab-stop-list tab-width)
  (setq c-basic-offset tab-width)
  (setq indent-tabs-mode nil)) ;; force only spaces for indentation
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)


;; ****************************************************************************
;;
;;            MATLAB-mode
;;
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)


;; ****************************************************************************
;;
;; BUFFER SWITCHING FIX
;;
;; This changes the behaviour of the switch-to-buffer completion functions so
;; that the current buffer is NOT in the completion list.
;;
;; i.e. say you're working in "temp.c", and you want to visit "temp.h"; so you
;; type "C-xb", then "t<TAB>" which then presents you with a completion list of
;; temp.c and temp.h, so you then must type "h<RET>".  This is annoying since
;; why would you want to switch back to the buffer you're in?!?  Using this fix
;; would remove "temp.c" from the completion lits so that when you had typed
;; "t<TAB>" the name would be completed as "temp.h" as desired.
;;
;; Steve Dodd
;; March 1998

(defun s-minibuffer-complete ()
  "A shell around minibuffer-complete which removes the name of the current
buffer from the buffer completion list. The default behaviour doesn't make
sense since there is no reason to ask to switch to the buffer you are already
in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
             (if (consp minibuffer-completion-table)
                 (setq  minibuffer-completion-table
                        (cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete))

(defun s-minibuffer-complete-word ()
  "A shell around minibuffer-complete-word which removes the name of the
current buffer from the buffer completion list. The default behaviour doesn't
make sense since there is no reason to ask to switch to the buffer you are
already in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
             (if (consp minibuffer-completion-table)
                 (setq  minibuffer-completion-table
                        (cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete-word)
  )

(defun s-minibuffer-complete-and-exit ()
  "A shell around minibuffer-complete-and-exit which removes the name of the
current buffer from the buffer completion list. The default behaviour doesn't
make sense since there is no reason to ask to switch to the buffer you are
already in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
             (if (consp minibuffer-completion-table)
                 (setq  minibuffer-completion-table
                        (cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete-and-exit)
  )


(defun s-switch-to-buffer ()
  "A shell around switch-to-buffer which removes the name of the current buffer
from the buffer completion list. The default behaviour doesn't make sense since
there is no reason to ask to switch to the buffer you are already in!"
  (interactive)
  (setq s-remove-first-completion 't)
  (switch-to-buffer (read-buffer "Switch to buffer: "
                                 (other-buffer)))
  )

(setq s-remove-first-completion 'nil)

(define-key minibuffer-local-completion-map "\040" 's-minibuffer-word)
(define-key minibuffer-local-completion-map "\t"
  's-minibuffer-complete)
(define-key minibuffer-local-must-match-map [return]
  's-minibuffer-complete-and-exit)
(global-set-key "\C-xb" 's-switch-to-buffer)

;; ****************************************************************************
;; END OF BUFFER SWITCHING FIX
;; ****************************************************************************



;; ****************************************************************************
;;
;; FUNCTION COMMENT HEADER COMMAND
;;

(defun z-function-comment ()
  "Inserts a blank function header comment field."
  (interactive)
  (insert "
/*****************************************************************************

 *****************************************************************************
 *
 *  Preconditions: 
 * Postconditions: 
 *        Returns: 
 */
")
  )


;; ****************************************************************************
;; END OF FUNCTION COMMENT HEADER
;; ****************************************************************************


;; ****************************************************************************
;;
;; CREATE MAKEFILE
;;

(defun z-create-makefile ()
  "creates a blank makefile template."
  (interactive)
  (insert "
#=============================================================================#
#====================== Program By   : zazylaw          ======================#
#=============================================================================#

#=============================================================================#
#  File name:  makefile                                                       #
#                                                                             #
#  Used to compile the program by typing 'make' at the UNIX prompt.           #
#=============================================================================#

CC       = CC

CFLAGS   = $(DEBUG) -Wall -pedantic-errors -O3
LDFLAGS  = $(DEBUG)

DEBUG                            = -g
COMPILE.EXE              = $(CC) $(CFLAGS) $(CPPFLAGS) $(DEBUG) $(INCDIR) -o $(EXEC)
COMPILE.O                = $(CC) $(CFLAGS) $(CPPFLAGS) $(DEBUG) $(INCDIR) -c

APP     = my_app
EXEC    = a.out

LIBS    = -lXaw -lXt -lXmu -lX11 -lXdmcp -lm
DEPD    = ./Include
INCDIR  = -I$(DEPD)
DEPS             = $(DEPD)

PRINT            = echo
DELETE           = rm -f

OFILES           =


###############################################################################

$(EXEC):                 $(OFILES) $(DEPS)
                                 $(COMPILE.EXE) $(APP).c $(OFILES) $(LIBS)

###############################################################################

#$(sample).o:            $(sample).c $(DEPS)
#                                $(COMPILE.O) $(sample).c $(LIBS)

###############################################################################

###############################################################################

clean:
                 $(DELETE) *.o; $(DELETE) *~; $(DELETE) core;

###############################################################################

clobber: clean
                  $(DELETE) $(EXEC)

###############################################################################

print:
                 $(PRINT) $(APP).c;
                 $(PRINT) makefile;

###############################################################################

###############
# END OF FILE #
###############
")
  )


;; ****************************************************************************
;; END OF CREATE MAKEFILE
;; ****************************************************************************




;; ****************************************************************************
;;
;; diff-buffers
;;
(defun diff-buffers (buffer-A buffer-B)
  "Diffs 2 buffers."
  (interactive "bFirst buffer: \nbSecond buffer: ")
  (save-excursion
    (save-restriction
      (save-match-data
        (setq TMPFILE1 "c:\\a.diff.txt")
        (setq TMPFILE2 "c:\\b.diff.txt")
        (setq ORIGBUFF (buffer-name))

        (switch-to-buffer buffer-A)
        (write-file TMPFILE1)
        (rename-buffer buffer-A)

        (switch-to-buffer buffer-B)
        (write-file TMPFILE2)
        (rename-buffer buffer-B)

        (diff "c:\\a.diff.txt" "c:\\b.diff.txt")

        (switch-to-buffer ORIGBUFF)
  )))
)

(defun m-diff (release)
  "Diffs the current buffer with its CMVC version."
  (interactive "sCMVC Release: ")
  (save-excursion
    (save-restriction
      (save-match-data
        (setq ORIGBUFF (buffer-name))
        (setq RELPATH  "c:\cmvc\ ")


        ;; Ok, need to get the full path of ORIGBUFF, then go back to outside
        ;; of CodeStore, and use that name for CMVC

        ;;(sparky)
        ;(shell-command (concat "cd c:/CMVC95/CMVC/EXE/; c:/CMVC95/CMVC/EXE/FILE" ".EXE" ))"
        ;; (concat "File -extract " ORIGBUFF " -release " release " -relative c:\cmvc\")
        (shell-command (concat "cd c:/CMVC95/CMVC/EXE/ & c:/CMVC95/CMVC/EXE/FILE.EXE -extract " ORIGBUFF " -release " release " -relative " RELPATH))

        ;c:/CMVC95/CMVC/EXE/FILE.EXE
        ;;(find-file "/zzylawy@sparky:/home/zzylawy/a.C")
        ;;(diff-buffers ORIGBUFF (buffer-name))
        (diff-buffers ORIGBUFF (concat RELPATH ORIGBUFF))
        ;;(kill-buffer (buffer-name))
  )))
)

;; (defun font-lock-add-keywords (major-mode keywords &optional append)
;; Add highlighting KEYWORDS for MAJOR-MODE.
;; MAJOR-MODE should be a symbol, the major mode command name, such as `c-mode'
;; or nil.  If nil, highlighting keywords are added for the current buffer.
;; KEYWORDS should be a list; see the variable `font-lock-keywords'.
;; By default they are added at the beginning of the current highlighting list.
;; If optional argument APPEND is `set', they are used to replace the current
;; highlighting list. If APPEND is any other non-nil value, they are added at
;; the end of the current highlighting list.

                                        ; For example:


;;(font-lock-add-keywords 'c-mode '("\\<\\(MyPoint\\)\\>"))



(defun kill-trailing-whitespace ()
  "Eliminate whitespace at ends of lines.  (processor-tools.el)"
  (interactive)
  (save-excursion
   (goto-char (point-min))
   (while (re-search-forward "[ \t][ \t]*$" nil t)
     (delete-region (match-beginning 0) (point)))))




;; (font-lock-add-keywords 'lisp-mode
;;  '((\"\\\\\\=<\\\\(FIXME\\\\):\" 1 font-lock-warning-face prepend)
;;    (\"\\\\\\=<\\\\(and\\\\|or\\\\|not\\\\)\\\\\\=>\" . font-lock-keyword-face)))

(defvar my-lisp-path "c:\lisp\\")
;; (load-file (concat my-lisp-path "macros.el"))
;; (load-file (concat my-lisp-path "readme.el"))
;; (load-file (concat my-lisp-path "scenario.el"))
;; (load-file (concat my-lisp-path "jcl-mode.el"))
;; (load-file (concat my-lisp-path "print-NT.el"))
;; (load-file (concat my-lisp-path "rexx-mode\\rexx-mode.el"))
;; (load-file (concat my-lisp-path "trace-mode.el"))
;; (load-file (concat my-lisp-path "show-wspace.el"))

(require 'show-wspace)
;; always show TABS and TRAILING WHITESPACE in files where font-lock-mode is on
(add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)
(add-hook 'font-lock-mode-hook 'show-ws-highlight-trailing-whitespace)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load CEDET
;(load-file "~/cedet-VERSION/common/cedet.el")
;(load-file (concat my-lisp-path "cedet-1.0pre3/common/cedet.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Set up PSGML
; Add PSGML to load-path so Emacs can find it.
; Note the forward slashes in the path... this is platform-independent so I
; would suggest using them over back slashes. If you use back slashes, they
; MUST BE doubled, as Emacs treats backslash as an escape character.
(setq load-path (append (list nil "c:/lisp/psgml-1.3.2") load-path))

; Use PSGML for sgml and xml major modes.
;;(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
;;(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)

;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following
;;(semantic-load-enable-code-helpers)
;(semantic-load-enable-guady-code-helpers)
;; (semantic-load-enable-excessive-code-helpers)

;; Enable this if you develop in semantic, or develop grammars
;; (semantic-load-enable-semantic-debugging-helpers)


;(setq semantic-load-turn-everything-on t)
;(require 'semantic-load)
;(global-semantic-show-dirty-mode -1)
;(global-semantic-show-unmatched-syntax-mode -1)

;; (add-to-list 'load-path "c:/lisp/ecb-1.22-pkg/lisp/ecb/")
;; (load-file (concat my-lisp-path "ecb-1.22-pkg/lisp/ecb/ecb.el"))
;; (require 'ecb)

;;;;;;;;;;

; Use emacs to read lotus notes mail

(put 'downcase-region 'disabled nil)

;;;;;;;;;;

; Show the function is being worked on in the mode line.
(which-func-mode)


;Permanently force Emacs to indent with spaces, never with TABs:
(setq-default indent-tabs-mode nil)

;(sparky)

;; Windows 7 hack to avoid file deletion permission problems
;; zz - doesn't seem to work
;; (add-to-list
;;  'ange-ftp-passive-host-alist
;;  (cons (regexp-quote "terran") "off"))
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(ange-ftp-ftp-program-name "c:/emacs_ftp/Release/ftp.exe")
; '(ange-ftp-tmp-name-template "c:/emacs_temp/"))
