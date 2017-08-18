;; ;;typescript-flycheck
;; (add-to-list 'load-path "/Users/issei/.emacs.d/git/flycheck-typescript-tslint/")
;; (load-library "flycheck-typescript-tslint")

;; (eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-typescript-tslint-setup))


(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))



(require 'tide)
(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-setup)
            (flycheck-mode t)
            (setq flycheck-check-syntax-automatically '(save mode-enabled))
            (eldoc-mode t)
            (company-mode-on)))



;; ;;; C-n, C-pで補完候補を選べるように
;; (define-key company-active-map (kbd "M-n") nil)
;; (define-key company-active-map (kbd "M-p") nil)
;; (define-key company-active-map (kbd "C-n") 'company-select-next)
;; (define-key company-active-map (kbd "C-p") 'company-select-previous)

;; ;;; C-hがデフォルトでドキュメント表示にmapされているので、文字を消せるようにmapを外す
;; (define-key company-active-map (kbd "C-h") nil)

;; ;;; 1つしか候補がなかったらtabで補完、複数候補があればtabで次の候補へ行くように
;; (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)

;; ;;; ドキュメント表示
;; (define-key company-active-map (kbd "M-d") 'company-show-doc-buffer)
;; (setq company-minimum-prefix-length 1) ;; 1文字入力で補完されるように
 ;;; 候補の一番上でselect-previousしたら一番下に、一番下でselect-nextしたら一番上に行くように
;; (setq company-selection-wrap-around t)
