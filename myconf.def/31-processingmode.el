;; processing-modeの設定
;;キーバインドメモ
;; C-c C-p r 	スケッチを実行する
;; C-c C-p b 	スケッチを .class ファイルにコンパイルする
;; C-c C-p p 	スケッチをフルスクリーンで実行する
;; C-c C-p e 	スケッチをエクスポートする
;; C-c C-p d 	カーソル位置にあるキーワードをローカルのリファレンスから探す
;; C-c C-p f 	スケッチを開く/新規作成する
;; C-c C-p s 	カーソル位置にあるキーワードを Processing フォーラムで検索する


(add-to-list 'load-path "~/.emacs.d/processing2-emacs/")
(autoload 'processing-mode "processing-mode" "Processing mode" t)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))



(setq processing-location "~/.emacs.d/processing-3.2.1/processing-java")
(setq processing-application-dir "~/.emacs.d/processing-3.2.1")
(setq processing-sketch-dir "~/sketchbook")
(setq processing-sketch-dir "~/Dropbox/sketchbook")


