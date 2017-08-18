;;-------------------------------------------------------------------------;;
;;時計の表示
(display-time-mode 1)

;;;スタートメッセージを表示しない
(setq inhibit-startup-message t)

;; ;; tool bar を消す.
(tool-bar-mode -1)
(menu-bar-mode -1)

;;起動時のフレームサイズを設定する
(setq initial-frame-alist
      (append (list
	'(width . 90)
        '(height . 45)
        )
       initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

(custom-set-variables
 '(blink-cursor-mode nil);;カーソルの点滅をやめる
 '(inhibit-startup-screen t);;起動時にGNU Emacs を表示しない
 '(show-paren-mode t));;対応するカッコを強調

;;-------------------------------------------------------------------------;;



;;-------------------------------------------------------------------------;;
;;左に行番号表示
(require 'linum)
(global-linum-mode)
;; (custom-set-faces
;;  '(linum ((t (:inherit (shadow default) :background "Gray23"))))) ;;背景色
(custom-set-faces
 '(linum ((t (:inherit (shadow default) :background "grey10"))))) ;;背景色

 (setq linum-format "%4d")  ;;予めマージンを指定

;; モードラインに行数を非表示に
(line-number-mode nil)
;;-------------------------------------------------------------------------;;


;;-------------------------------------------------------------------------;;
;;タブ周りの設定
;;-------------------------------------------------------------------------;;
(require 'tabbar)
(tabbar-mode 1)


;; タブ上でマウスホイールを使わない
(tabbar-mwheel-mode nil)
;; グループを使わない
(setq tabbar-buffer-groups-function nil)
;; 左側のボタンを消す
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
;; 色設定
(set-face-attribute ; バー自体の色
  'tabbar-default nil
   ;; :background "grey30"
   :background "grey25"
   ;; :family "M+ 2p"
   :family "Ricty Diminished"
   :height 0.9)

(set-face-attribute ; アクティブなタブ
  'tabbar-selected nil
   :background "SkyBlue"
   :foreground "white"
   :foreground "grey30"
   ;; :weight 'bold
   :box nil)
(set-face-attribute ; 非アクティブなタブ
  'tabbar-unselected nil
   :background "grey30"
   :foreground "white"
   :family "Ricty Diminished"
   :box nil)


(defun my-tabbar-buffer-list ()
  (delq nil
        (mapcar #'(lambda (b)
                    (cond
                     ;; Always include the current buffer.
                     ((eq (current-buffer) b) b)
                     ((buffer-file-name b) b)
                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
		     ((equal "*scratch*" (buffer-name b)) b) ; *scratch*バッファは表示する
		     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
                     ((buffer-live-p b) b)))
                (buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)


; エラーがあったときだけログバッファを表示
(if (not (equal (init-loader-error-log) "")) 
    (init-loader-show-log))

;; ;; グループ化しない
;; (setq tabbar-buffer-groups-function nil)

;; タブ同士の間隔
(setq tabbar-separator '(0.8))
;---------------------------------------------------------------------;
