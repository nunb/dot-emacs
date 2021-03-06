;; Sets basic emacs defaults

;; Prevent file backups from being taken, use version control instead
;; http://www.rpi.edu/dept/acs/rpinfo/common/Computing/Consulting/Software/Emacs/Hints/backup.html
(setq make-backup-files nil)


;; Prevent the startup message from showing up
;; http://stackoverflow.com/questions/3869159/how-do-i-kill-the-gnu-emacs-buffer-when-emacs-starts
(setq inhibit-startup-message t)


;; System to emacs copy-paste
;; http://stackoverflow.com/questions/64360/how-to-copy-text-from-emacs-to-another-application-on-linux
(setq x-select-enable-clipboard t)


;; Save cursor position in a file
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)


;; Uniquify buffer names
;; http://www.gnu.org/software/libtool/manual/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)


;; Initialize ido mode
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido)
(ido-mode t)


;; Highlight parens
;; http://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode t)
(setq show-paren-delay 0)


;; Indent whole buffer
;; http://emacsblog.org/2007/01/17/indent-whole-buffer/
(defun indent-whole-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(global-set-key (kbd "C-c n") 'indent-whole-buffer)


;; Set default browser
;; http://www.emacswiki.org/cgi-bin/wiki/BrowseUrl#toc9
(setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "open")


;; Vedang
(global-set-key (kbd "<f5>") 'revert-buffer) ; Set revert-buffer to F5
(defalias 'yes-or-no-p 'y-or-n-p) ; Set yes-or-no-p to y-or-n-p
(setq require-final-newline t) ; Always add a newline at the end of a file
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; Delete trailing whitespace before saving
(setq-default indent-tabs-mode nil) ; Replaces tabs with spaces


;; font
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-default-font "-adobe-courier-medium-r-normal--14-180-75-75-m-110-iso8859-1")


;; mac osx specific
;; http://stackoverflow.com/questions/604808/option-or-command-key-as-meta-key-for-lispbox-on-macintosh
(setq mac-command-modifier 'meta)
