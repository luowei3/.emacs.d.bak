
;;swiper 相关
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;(global-set-key (kbd "<f1> f") 'counsel-describe-function)
;;(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;;(global-set-key (kbd "<f1> l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c g") 'counsel-git)
;;(global-set-key (kbd "C-c j") 'counsel-git-grep)
;;(global-set-key (kbd "C-c k") 'counsel-ag)
;;(global-set-key (kbd "C-x l") 'counsel-locate)
;;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;;(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;自动缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;自动补全
(global-set-key (kbd "s-/") 'hippie-expand)

;;occur 相关
(global-set-key (kbd "M-s o") 'occur-dwim)
(global-set-key (kbd "M-s i") 'counsel-imenu)
;;dired 模式
;;(with-eval-after-load 'dired ;; 延迟加载
;;    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;helm 搜索相关
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;;iedit
(global-set-key (kbd "M-s e") 'iedit-mode)
;;末尾
(provide 'lvway-init-keybindings)
