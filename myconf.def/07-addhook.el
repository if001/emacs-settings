;; hookの設定まとめ

;; ファイルの先頭が#!で始まる場合、+xをつけて保存する
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)


;; elispや変数の情報をエコーエリアへ表示させる設定
(add-hook 'emacs-lisp-mode-hook
	  '(lambda ()
	     (when (require 'eldoc nil t)
	       (setq eldoc-idle-delay 0.2)
	       (setq eldoc-echo-area-use-multiline-p t)
	       (turn-on-eldoc-mode))))
