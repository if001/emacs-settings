
;; ;;-------------------------------------------------------------------------;;
;; ;;markdownモード
;; ;;-------------------------------------------------------------------------;;
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.MD\\'" . markdown-mode))

;;自作メモファイルmmdもmarkdown-modeで開く
(add-to-list 'auto-mode-alist '("\\.mmd\\'" . markdown-mode))

;(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alis
;(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;memo
;; "C-c C-c p" :  ブラウザでプレビューを見る
;; "C-c C-c e" : 編集している.mdを変換し、.htmlに出力します。
;; "C-c C-c v": .htmlを出力し、そのファイルをブラウザで開いて表示する(新しいタブで表示する)。
;; "C-c C-h":その他のmarkdown-modeのショートカットキー表示
;; ;;-------------------------------------------------------------------------;;
