;; エラー表示
;; flycheckがめっちゃおすすめされてるけど、24.3では使えないらしいので
;; flymake使ってみる

;; M-p/M-n で警告/エラー行の移動
(global-set-key "\M-p" 'flymake-goto-prev-error)
(global-set-key "\M-n" 'flymake-goto-next-error)

;;color設定
(custom-set-faces
 ;; '(flymake-errline ((((class color)) (:underline "red")))))
 '(flymake-errline ((((class color)) (:underline "VioletRed4")))))


;; python用の設定
(require 'tramp-cmds)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
     ; Make sure it's not a remote buffer or flymake would not work
     (when (not (subsetp (list (current-buffer)) (tramp-list-remote-buffers)))
      (let* ((temp-file (flymake-init-create-temp-buffer-copy
                         'flymake-create-temp-inplace))
             (local-file (file-relative-name
                          temp-file
                          (file-name-directory buffer-file-name))))
        (list "pyflakes" (list local-file)))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))
 
(add-hook 'python-mode-hook
          (lambda ()
            (flymake-mode t)))
