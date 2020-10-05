;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Keybindings
(general-evil-setup t)
(map! :leader "SPC" 'execute-extended-command)
(defmacro ijkl (command)
  `(,command
    ;; Use IJKL (inverse-T) for navigation in lieu of HJKL
    "h" 'evil-insert
    "i" 'evil-previous-visual-line
    "j" 'evil-backward-char
    "k" 'evil-next-visual-line
    "l" 'evil-forward-char
    ;; Shift-IJKL for "turbo mode"
    "I" '(lambda () (interactive) (evil-previous-visual-line 5))
    "J" '(lambda () (interactive) (evil-backward-char        5))
    "K" '(lambda () (interactive) (evil-next-visual-line     5))
    "L" '(lambda () (interactive) (evil-forward-char         5))))
(ijkl nmap)
(ijkl vmap)

;; Appearance and Theming
(setq
 doom-font                 (font-spec :family "Iosevka Curly Slab" :size 16)
 doom-serif-font           (font-spec :family "Iosevka"            :size 16)
 doom-theme                'doom-manegarm
 display-line-numbers-type nil)

;; Prefer UTF-8, avoid Windows CRLF wherever
(prefer-coding-system       'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; Indentation
(setq-default
 c-basic-offset   2
 tab-width        2
 indent-tabs-mode nil)

;; Other stuff
(setq org-directory "~/org")
