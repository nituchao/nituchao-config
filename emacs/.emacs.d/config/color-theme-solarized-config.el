;; ================================================================
;; 加载solarized主题，使用该主题必须先导入color-theme
(add-to-list 'load-path "~/.emacs.d/extend/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/extend/color-theme-solarized")
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized)

(provide 'color-theme-solarized-config)
