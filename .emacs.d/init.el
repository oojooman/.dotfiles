(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'solarized-theme)
  (package-refresh-contents)
  (package-install 'solarized-theme))

;;; This is the actual config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (ivy expand-region rainbow-delimiters rainbow-delimters rjsx-mode ledger ledger-mode js2-mode jsx-mode diminish spaceline projectile magit alchemist elixir-yasnippets elixir-mode markdown-mode org-bullets dashboard company avy switch-window eyebrowse smex ido-vertical-mode flx-ido sudo-edit hungry-delete beacon which-key solarized-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(org-level-1 ((t (:inherit variable-pitch :foreground "#cb4b16" :height 120 :family "Inconsolata"))))
 '(org-level-2 ((t (:inherit variable-pitch :foreground "#859900" :height 120 :family "Inconsolata"))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#268bd2" :height 120 :family "Inconsolata"))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#b58900" :height 120 :family "Inconsolata"))))
 '(org-level-5 ((t (:inherit variable-pitch :foreground "#2aa198" :height 120 :family "Inconsolata"))))
 '(org-level-6 ((t (:inherit variable-pitch :foreground "#859900" :height 120 :family "Inconsolata"))))
 '(org-level-7 ((t (:inherit variable-pitch :foreground "#dc322f" :height 120 :family "Inconsolata"))))
 '(org-level-8 ((t (:inherit variable-pitch :foreground "#268bd2" :height 120 :family "Inconsolata")))))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
