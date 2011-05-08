;; Insert fancy emacs quotes here

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"
;; -https://github.com/technomancy/emacs-starter-kit/blob/master/init.el

(add-to-list 'load-path "~/.emacs.d/config")  ; custom configurations
(add-to-list 'load-path "~/.emacs.d/plugins") ; external repos and downloads
(load "theme")				      ; appearance
(load "defaults")			      ; defaults
