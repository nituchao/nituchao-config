;; ===============================================================
;; 加载全局配置信息
;; ===============================================================
(add-to-list 'load-path "~/.emacs.d/config/")
(defalias 'yes-or-no-p 'y-or-n-p)
(setq user-full-name "liang")
(setq user-mail-address "zhangliang1@xiaomi.com")
(setq make-backup-files nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq-default cursor-type 'bar)
(set-face-attribute 'default nil :height 180)
(setq default-directory "/Users/liang/Desktop/")

;; ===============================================================
;; 加载中文编码配置
;; ===============================================================
(set-language-environment 'Chinese-GB)
(setq locale-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
;; 文件默认保存为 utf-8
(set-buffer-file-coding-system 'utf-8)
(set-default buffer-file-coding-system 'utf8)
(set-default-coding-systems 'utf-8)
;; 解决粘贴中文出现乱码的问题
(set-clipboard-coding-system 'utf-8)
;; 终端中文乱码
(set-terminal-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
;; 解决文件目录的中文名乱码
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
;; 解决 Shell Mode(cmd) 下中文乱码问题
(defun change-shell-mode-coding ()
  (progn
    (set-terminal-coding-system 'gbk)
    (set-keyboard-coding-system 'gbk)
    (set-selection-coding-system 'gbk)
    (set-buffer-file-coding-system 'gbk)
    (set-file-name-coding-system 'gbk)
    (modify-coding-system-alist 'process "*" 'gbk)
    (set-buffer-process-coding-system 'gbk 'gbk)
    (set-file-name-coding-system 'gbk)))
;; 设置字体
(set-default-font "Courier")
(set-fontset-font (frame-parameter nil 'font)
                  'han (font-spec :family "苹方-简"
                                  :size 18))

;; ===============================================================
;; 加载全局界面配置
;; ===============================================================
(column-number-mode 1)
(line-number-mode 1)
(global-linum-mode 1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; ===============================================================
;; 加载初始化界面
;; ===============================================================
(require 'welcome-screen-config)

;; ===============================================================
;; 加载全局快捷键绑定
;; ===============================================================
(global-set-key (kbd "C-b") 'buffer-menu)
(global-set-key (kbd "C-x C-n") 'rename-buffer)
(global-set-key (kbd "C-x C-r") 'replace-regexp)

;; ===============================================================
;; 加载自定义状态栏
;; ===============================================================
(require 'mode-line-config)

;; ===============================================================
;; 加载color-theme-solarized主题
;; ===============================================================
(require 'color-theme-solarized-config)

;; ===============================================================
;; 加载ido-mode配置
;; ===============================================================
(require 'ido-mode-config)

;; ===============================================================
;; 加载Lusty Explorer配置
;; ===============================================================
(require 'lusty-explorer-config)

;; ===============================================================
;; 加载multi-term配置
;; ===============================================================
(require 'multi-term-mode-config)

;; ===============================================================
;; 加载行拷贝，行剪切，行复制操作
;; ===============================================================
(require 'line-copy-config)

;; ===============================================================
;; 加载json-mode配置
;; ===============================================================
(require 'json-mode-config)

;; ===============================================================
;; 加载org-mode配置
;; ===============================================================
(require 'org-mode-config)
