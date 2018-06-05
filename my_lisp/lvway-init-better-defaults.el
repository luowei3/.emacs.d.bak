
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
