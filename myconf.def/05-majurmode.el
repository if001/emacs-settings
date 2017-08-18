;;ファイル名の拡張子に特定の拡張子がついていたら、拡張子に応じたモードで開く
;;-------------------------------------------------------------------------;;
;;pyxファイルをpython-modeで起動
(add-to-list 'auto-mode-alist '("\\.pyx\\'" . python-mode))

;; (add-to-list 'auto-mode-alist '("\\.rb\\'" . enh-ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rake\\'" . enh-ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.m\\(ark\\)?do?wn\\'" . gfm-mode))
;;-------------------------------------------------------------------------;;
