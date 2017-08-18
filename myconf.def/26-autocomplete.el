(require 'auto-complete)
(require 'auto-complete-config)
;;キーバインド
(global-set-key [\C-tab] 'auto-complete-mode)



;;設定
;; (require 'auto-complete-config)
;; (setq ac-auto-start t) ; 自動的に開始しない
;; (ac-config-default)
;; (add-to-list 'ac-modes 'text-mode)         ;; text-modeでも自動的に有効にする
;; (add-to-list 'ac-modes 'fundamental-mode)  ;; fundamental-mode
;; (add-to-list 'ac-modes 'org-mode)
;; (add-to-list 'ac-modes 'yatex-mode)
;; (ac-set-trigger-key "TAB")

;; ;; 補完メニュー表示時にC-n/C-pで補完候補選択
;; (setq ac-use-menu-map t)
;; ;; 曖昧マッチ
;; (setq ac-use-fuzzy t)
