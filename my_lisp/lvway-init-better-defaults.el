
;;禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)
;;选中一段文字 之后输入一个字符会替换掉选中部分的文字
(delete-selection-mode 1)
;;自动加载更改过的文件
(global-auto-revert-mode 1)
;;关闭自动保存文件
;;(setq auto-save-default nil)
;;关闭 Emacs 中的警告音
(setq ring-bell-function 'ignore)

;;自动缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

;;自动补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
;;确认某个命令时需要输入 (yes or no) 比较麻烦，可以设置一个别名将其简化为只输入 (y or n)
(fset 'yes-or-no-p 'y-or-n-p)
;;dired 模式优化
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired)
;;当输入下面的缩写,并以空格结束时，Emacs 就会将其自动展开成为我们所需要的字符串,
;; 8是为了不重命名
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
                                            ;; Shifu
                                            ("8zl" "zilongshanren")
                                            ;; Tudi
                                            ("8lxy" "lixinyang")
                                            ))


(provide 'lvway-init-better-defaults)
