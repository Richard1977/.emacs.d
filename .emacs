;;(set-default-font "-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-13-*-*-*-*-0-iso10646-1");设置默认字体
(desktop-save-mode 1) ;自动打开上次文件
(setq default-directory "~");设置缺省工作目录
(setq inhibit-startup-message t);关闭启动画面
(tool-bar-mode -1);去掉工具栏
(scroll-bar-mode -1);去掉滚动条
(setq column-number-mode t);显示行列号
(setq line-number-mode t)
(setq kill-ring-max 1000);用一个很大的 kill ring.
(setq-default ispell-program-name "aspell");用aspell程序替代ispell
(setq user-full-name "Richard");设置全名
(setq user-mail-address "xiaochong@foxmail.com");设置个人邮箱
;;(set-frame-parameter (selected-frame) 'alpha (list 90 50));透明设置
;;(add-to-list 'default-frame-alist (cons 'alpha (list 90 50))) ;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/self.org" "~/work.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;自动换行
(add-hook 'org-mode-hook
(lambda ()
(setq truncate-lines nil)
(set-fill-column 70)))
;;capture template
(setq org-capture-templates
'(("t" "Todo" entry (file+xheadline "~/org/gtd.org" "Tasks")
"* TODO %?\n %i\n %a")
("j" "Journal" entry (file+datetree "~/org/journal.org")
"* %?\nEntered on %U\n %i\n %a")))
