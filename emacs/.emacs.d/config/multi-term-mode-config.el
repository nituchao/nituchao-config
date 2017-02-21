;; ===============================================================
;; multi-term
;; ===============================================================
(add-to-list 'load-path "~/.emacs.d/extend/multi-term")
(require 'multi-term)

(global-set-key (kbd "C-x C-t") 'multi-term) ;; call multi-term
(setq multi-term-program "/bin/zsh")         ;; default shell is zsh
(setq system-uses-terminfo nil)              ;; User Emacs terminfo, not system terminfo, mac os 4m

;; 设置multi-term buffer的长度无限
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 0)))

;; 设置multi-term的一些运行变量
(custom-set-variables
 '(tramp-default-method "ssh")          ; uses ControlMaster
 '(comint-scroll-to-bottom-on-input t)  ; always insert at the bottom
 '(comint-scroll-to-bottom-on-output nil) ; always add output at the bottom
 '(comint-scroll-show-maximum-output t) ; scroll to show max possible output
 ;; '(comint-completion-autolist t)     ; show completion list when ambiguous
 '(comint-input-ignoredups t)           ; no duplicates in command history
 '(comint-completion-addsuffix t)       ; insert space/slash after file completion
 '(comint-buffer-maximum-size 20000)    ; max length of the buffer in lines
 '(comint-prompt-read-only nil)         ; if this is t, it breaks shell-command
 '(comint-get-old-input (lambda () "")) ; what to run when i press enter on a
                                        ; line above the current prompt
 '(comint-input-ring-size 5000)         ; max shell history size
 '(protect-buffer-bury-p nil)
)
;; 下面设置一些快捷键
(add-hook 'term-mode-hook
          (lambda ()
	    (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))
	    (add-to-list 'term-bind-key-alist '("C-c C-c" . term-interrupt-subjob))
            (add-to-list 'term-bind-key-alist '("C-c C-j" . term-line-mode))
            (add-to-list 'term-bind-key-alist '("C-c C-k" . term-char-mode))
            (add-to-list 'term-bind-key-alist '("M-DEL" . term-send-backward-kill-word))
            (add-to-list 'term-bind-key-alist '("M-d" . term-send-forward-kill-word))
	    ))

;; 以下快捷键保留为emacs其他模式
(add-to-list 'term-bind-key-alist '("C-b"))

(provide 'multi-term-mode-config)
