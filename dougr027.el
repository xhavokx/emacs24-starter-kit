;; Starter kit additions
(starter-kit-load "python")
(starter-kit-load "lisp")
(starter-kit-load "haskell")
(starter-kit-load "js")
(starter-kit-load "latex")
(starter-kit-load "ruby")
(starter-kit-load "eshell")

;; Slime mode for emacs, using SBCL
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; Haskel mode
(setq shm-program-name "/home/dougr027/.cabal/bin/structured-haskell-mode")
(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))

(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

;(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
;(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)

(custom-set-variables
  '(haskell-process-type 'ghci)) ; Options ('ghci' 'cabal-repl' 'cabal-dev' 'cabal-ghci')

