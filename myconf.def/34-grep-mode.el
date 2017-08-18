;;; defaultのgrep機能を拡張
;; http://please-sleep.cou929.nu/emacs-grep-mode.html
;; ルート以下を検索するので時間かかる？どの行が対応するかわからん


;; (define-key global-map (kbd "C-x g") 'grep)
;; (require 'grep)
;; (setq grep-command-before-query "grep -nH -r -e ")
;; (defun grep-default-command ()
;;   (if current-prefix-arg
;;       (let ((grep-command-before-target
;;              (concat grep-command-before-query
;;                      (shell-quote-argument (grep-tag-default)))))
;;         (cons (if buffer-file-name
;;                   (concat grep-command-before-target
;;                           " *."
;;                           (file-name-extension buffer-file-name))
;;                 (concat grep-command-before-target " ."))
;;               (+ (length grep-command-before-target) 1)))
;;     (car grep-command)))
;; (setq grep-command (cons (concat grep-command-before-query " .")
;;                          (+ (length grep-command-before-query) 1)))
