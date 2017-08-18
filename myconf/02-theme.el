;;;-------------------------------------------------------------------------;;
;; 背景色
(set-background-color "grey10")

;; 文字の色
(set-foreground-color "grey80")

;;コメントの色
(set-face-foreground 'font-lock-comment-face "steel blue")
;(set-face-foreground 'font-lock-comment-face "#6c7b8b")

;; 選択範囲の色を指定
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "gray30")

;;背景透過
;(set-frame-parameter nil 'alpha 95)
(set-frame-parameter nil 'alpha 95)

;;カーソルの色
(set-cursor-color "DarkSlateGray4")

;; setq とかrequirとかの色
;(set-face-foreground 'font-lock-keyword-face "#b2d7ff")
;(set-face-foreground 'font-lock-keyword-face "#3b99fc")
;(set-face-foreground 'font-lock-keyword-face "#00cdcd")

;; 'highlight-indentationt とかの色
;(set-face-foreground 'font-lock-constant-face "#cd4f39")

;; string型の時の色
;(set-face-foreground 'font-lock-string-face "#ee7600")
;(set-face-foreground 'font-lock-string-face "#cd5c5c")
;; ;;-------------------------------------------------------------------------;;



;; ;;-------------------------------------------------------------------------;;
;;インデントハイライト
;; ;;-------------------------------------------------------------------------;;
(add-to-list 'load-path "~/.emacs.d/vendor/Highlight-Indentation-for-Emacs")
(require 'highlight-indentation)
(setq highlight-indentation-mode t)

(setq highlight-indentation-offset 2)  ;; default: 4
(set-face-background 'highlight-indentation-face "gray20")
(set-face-background 'highlight-indentation-current-column-face "gray20")
;; (add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
;; (add-hook 'cperl-mode-hook  'highlight-indentation-current-column-mode)
;; (add-hook 'scss-mode-hook   'highlight-indentation-current-column-mode)
;; (add-hook 'python-mode-hook   'highlight-indentation-current-column-mode)
(add-hook 'python-mode-hook   'highlight-indentation-mode)

(global-set-key "\C-h" 'highlight-indentation-mode)

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



;; ;;-------------------------------------------------------------------------;;
;; カッコの色をわかりやすく
;; rainbow-delimiters を使うための設定
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; 括弧の色を強調する設定
(require 'cl-lib)
(require 'color)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
    (cl-callf color-saturate-name (face-foreground face) 30))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)
;; ;;-------------------------------------------------------------------------;;


