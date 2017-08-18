
;;パスの設定
(add-to-list 'load-path "~/.emacs.d/ESS/lisp/")
(load "ess-site")
;; (require "~//ESS/lisp/ess-site")

;; 拡張子が r, R の場合に R-mode を起動
;; (add-to-list 'auto-mode-alist '("\\.[rR]$" . R-mode))
(add-to-list 'auto-mode-alist '("\\.r\\'" . R-mode))
(add-to-list 'auto-mode-alist '("\\.R\\'" . R-mode))



;; R-mode を起動する時に ess-site をロード
(autoload 'R-mode "ess-site" "Emacs Speaks Statistics mode" t)
;; R を起動する時に ess-site をロード
(autoload 'R "ess-site" "start R" t)
