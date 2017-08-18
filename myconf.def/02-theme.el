;;;-------------------------------------------------------------------------;;
;; 背景色
(set-background-color "grey10")

;; 文字の色
(set-foreground-color "grey90")

;;コメントの色
(set-face-foreground 'font-lock-comment-face "steel blue")

;; 選択範囲の色を指定
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "gray30")

;;背景透過
(set-frame-parameter nil 'alpha 95)
;; ;;-------------------------------------------------------------------------;;



;; ;;-------------------------------------------------------------------------;;
;;インデントハイライト
;; ;;-------------------------------------------------------------------------;;
(add-to-list 'load-path "~/.emacs.d/vendor/Highlight-Indentation-for-Emacs")
(require 'highlight-indentation)
(setq highlight-indentation-mode t)

(setq highlight-indentation-offset 1)  ;; default: 4
(set-face-background 'highlight-indentation-face "gray20")
(set-face-background 'highlight-indentation-current-column-face "gray20")
;; (add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
;; (add-hook 'cperl-mode-hook  'highlight-indentation-current-column-mode)
;; (add-hook 'scss-mode-hook   'highlight-indentation-current-column-mode)
;; (add-hook 'python-mode-hook   'highlight-indentation-current-column-mode)
(add-hook 'python-mode-hook   'highlight-indentation-mode)

;; (global-set-key "\C-h" 'highlight-indentation-mode)

;; ;;-------------------------------------------------------------------------;;



;; ;;-------------------------------------------------------------------------;;
;;現在行にアンダーライン
;; ;;-------------------------------------------------------------------------;;
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "gray20" :underline "DarkSlateGray4"))
    (((class color)
      (background light))
    (:background "gray20":underline "DarkSlateGray4"))
    (t()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
;(setq hl-line-face 'underline)
(global-hl-line-mode)
;; ;;-------------------------------------------------------------------------;;
