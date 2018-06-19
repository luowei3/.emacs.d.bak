;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;//////////////////////////////////////////////////lvway config/////////////////////////////////////////////////////
;;自定义初始化相关
(add-to-list 'load-path "~/.emacs.d/my_lisp")
(require 'lvway-init-packages)
(require 'lvway-init-ui)
(require 'lvway-init-better-defaults)
(require 'lvway-init-keybindings)  ;;放最后










;; 快速打开配置文件
;;(defun open-init-file()
;;  (interactive)
;;  (find-file "~/.emacs.d/init.el"))
;;(global-set-key (kbd "<f2>") 'open-init-file)

;;添加 Org-mode 文本内语法高亮
;;(require 'org)
;;(setq org-src-fontify-natively t)
;;Org Agenda 相关设置
;;(setq org-agenda-files '("~/org")) ;; 设置默认 Org Agenda 文件目录
;;(global-set-key (kbd "C-c a") 'org-agenda) ;; 设置 org-agenda 打开快捷键
;;只需将你的 *.org 文件放入上面所指定的文件夹中就可以开始使用 Agenda 模式了



;;//////////////////////////////////////////////////lvway config end ///////////////////////////////////////////////
;;custom 自动生成
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(package-selected-packages
   (quote
    (iedit helm-ag expand-region expand-line org monokai-theme hungry-delete exec-path-from-shell dash counsel company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((t (:foreground "white")))))
(put 'dired-find-alternate-file 'disabled nil)
