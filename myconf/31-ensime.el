;; ensime setting

;; build.sbtに以下を追加
;; global設定に書いているので、いちいち追加する必要ないかも
;; addSbtPlugin("org.ensime" % "ensime-sbt" % "0.1.5-SNAPSHOT")

;; .ensimeファイルを作成
;; $ sbt
;;  > gen-ensime
;; もしくは、
;; $ sbt ensimeConfig


;; F1 bでキーバインドを確認
(setenv "/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home")
(setenv "/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home")

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; 保管にauto-completeを使う
(setq ensime-completion-style 'auto-complete)



;; ;; エラー箇所にカーソルを合わせることで、ミニバッファにエラーを表示
;; (defun scala/show-error ()
;;   "Show error message at point by Eldoc."
;;   (setq-local eldoc-documentation-function
;;               #'(lambda ()
;;                   (when (ensime-connected-p)
;;                     (let ((err (ensime-print-errors-at-point)))
;;                       (and err (not (string= err "")) err)))))
;;   (eldoc-mode +1))
;; (add-hook 'ensime-mode-hook #'scala/show-error)



;; (defun scala/show-error ()
;;   "Show error message at point by Eldoc."
;;   (setq-local eldoc-documentation-function
;;               #'(lambda ()
;;                   (when (ensime-connected-p)
;;                     (let ((err (ensime-inspect-type-at-point)))
;;                       (and err (not (string= err "")) err)))))
;;   (eldoc-mode +1))
;; (add-hook 'ensime-mode-hook #'scala/show-error)






;; (require 'shackle)
;; (setq shackle-rules
;;       ("*Inspector*" :popup t)
;;       ;("*Completions*" :align below :ratio 0.3)
;;       ))
;; (shackle-mode 1)
;; (setq shackle-lighter "")

;; ;;; C-zで直前のウィンドウ構成に戻す
;; (winner-mode 1)
;; (global-set-key (kbd "C-,") 'winner-undo)



