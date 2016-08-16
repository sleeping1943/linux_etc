;; .emacs

;;关闭欢迎页面
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;;for sr-speedbar
(add-to-list 'load-path "~/.emacs.d/")
(require 'sr-speedbar)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(ede-project-directories (quote ("/root/git/iseal-pb2var" "/root" "/root/git/iseal-redis/.deps" "/root/git/iseal-redis")))
 '(semantic-mode t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 158 :width normal)))))
;;显示行号和列号
(setq column-number-mode t) 
(setq line-number-mode t)

;;显示行号
(global-linum-mode t)
;;显示列号
(column-number-mode t)

;;for ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;设置F5打开／关闭概要窗口
(global-set-key [f5] 'sr-speedbar-toggle)

;;显示时间
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)

;;设置打开文件的缺省路径，这里audio，我的主要工作目录就是在这里
;;默认的路径为“～/”
;(setq default-directory "～")

;;打开括号匹配显示模式
(setq show-paren-mode t) 

;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-style 'parenthesis)

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;;设置窗口自动编号，跳转
;;使用 M-1/M-2/M-3/.../M-9 来快速切换到第 1/2/3/.../9 窗口（窗口上有编号）
(require 'window-numbering)
(window-numbering-mode 1)

;;使ede特性可用
(global-ede-mode 1)

(global-set-key [(f11)] 'loop-alpha)
(setq alpha-list '((100 100) (95 65) (85 55) (75 45) (65 35)))
(defun loop-alpha ()
  (interactive)
  (let ((h (car alpha-list)))     ;; head value will set to
  ((lambda (a ab)
  (set-frame-parameter (selected-frame) 'alpha (list a ab))
  (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
  ) (car h) (car (cdr h)))
  (setq alpha-list (cdr (append alpha-list (list h))))
  )
)

(require 'cedet)
(require 'eieio)
(require 'eieio-speedbar)
(require 'eieio-opt)
(require 'eieio-base)
(require 'ede/source)
(require 'ede/base)
(require 'ede/auto)
(require 'ede/proj)
(require 'ede/proj-archive)
(require 'ede/proj-aux)
(require 'ede/proj-comp)
(require 'ede/proj-elisp)
(require 'ede/proj-info)
(require 'ede/proj-misc)
(require 'ede/proj-obj)
(require 'ede/proj-prog)
(require 'ede/proj-scheme)
(require 'ede/proj-shared)

;;tab = 4 space
(setq default-tab-width 4)

;; Semantic
(global-semantic-idle-scheduler-mode)
(global-semantic-idle-completions-mode)
(global-semantic-decoration-mode)
(global-semantic-highlight-func-mode)
(global-semantic-show-unmatched-syntax-mode)
semantic-idle-summary-mode

;; Autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name
             "~/.emacs.d/auto-complete/dict"))
(setq ac-comphist-file (expand-file-name
             "~/.emacs.d/ac-comphist.dat"))
(ac-config-default)

;; 整个buffer所有函数折叠与展开  
;(define-key semantic-tag-folding-mode-map (kbd "C-c . -") 'semantic-tag-folding-fold-all)  
;(define-key semantic-tag-folding-mode-map (kbd "C-c . =") 'semantic-tag-folding-show-all) 
