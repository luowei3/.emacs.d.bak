;;**************************************************包管理相关*******************************************
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                                        (not (gnutls-available-p))))
;;              (proto (if no-ssl "http" "https")))
		(proto (if no-ssl "http" "http" )))
    ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
      (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
        ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
          (when (< emacs-major-version 24)
                ;; For important compatibility libraries like cl-lib
                    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

 ;; cl - Common Lisp Extension
 (require 'cl)
 ;; 将需要安装的插件列在下面
 (defvar my/packages '(
                company
                ;; --- Better Editor ---
                hungry-delete
                swiper
                counsel
                smartparens
		popwin
                ;; --- Major Mode ---
                js2-mode
                ;; --- Minor Mode ---
                nodejs-repl
                exec-path-from-shell
                ;; --- Themes ---
                monokai-theme
                ;; solarized-theme
                ) "Default packages")
 (setq package-selected-packages my/packages)
 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))
 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))
;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))
;;*******************************************************************************************************

;;************************************包配置相关*********************************************************
;;Company相关
(global-company-mode 1)
;;加载主题
(load-theme 'monokai 1)
;;js2 配置
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
;;hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;;smartparens 相关,括号自动补全相关
(require 'smartparens-config)
(smartparens-global-mode t)

;;popwin 相关
(require 'popwin)
(popwin-mode 1)
;;末尾
(provide 'lvway-init-packages)
