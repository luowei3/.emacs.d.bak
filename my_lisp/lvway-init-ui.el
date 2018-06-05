;;关闭工具栏
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)
;; 设置光标样式
(setq-default cursor-type 'bar)
;;开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;高亮当前行
(global-hl-line-mode 1)
;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;;末尾
(provide 'lvway-init-ui)

