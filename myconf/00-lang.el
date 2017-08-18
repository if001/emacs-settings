
;;-------------------------------------------------------------------------;;
;;フォント設定
;;-------------------------------------------------------------------------;;
;; (set-language-environment "Japanese")
;; (prefer-cooding-system 'utf-8)
;; フォント名確認は以下のコマンドをscratchでC-jで評価
;; (dolist (x (font-family-list)) (print x))
;; こっちでもおkなんか時間かかる
;; (insert (prin1-to-string (x-list-fonts "*")))



;;英語
;;vaio-pの時の文字サイズ
(if (string-match "vaio-p" system-name)
(set-face-attribute 'default nil
;		    :family "VL Pゴシック"
;    		    :family "M+ 2p"
    		    :family "Ricty Diminished Regular"
		    :height 190))
(if (string-match "vaio-p" system-name)
    (set-fontset-font
     nil 'japanese-jisx0208
     (font-spec :family "源真ゴシック" :size 20))
  ) ;; font


;;desktopの時の文字サイズ
(if (string-match "desktop" system-name)
(set-face-attribute 'default nil
;		    :family "VL Pゴシック"
;    		    :family "M+ 2p"
;    		    :family "Ricty Diminished Light"
    		    :family "Ricty Diminished Regular"
		    :height 150))
(if (string-match "desktop" system-name)
    (set-fontset-font
     nil 'japanese-jisx0208
     (font-spec :family "源真ゴシック" :size 16))
  ) ;; font


;; 研究室
(if (string-match "fate.bcl.yamaguchi-u.ac.jp" system-name)
    (set-face-attribute 'default nil
		    :family "Ricty Diminished"
    		    ;:family "M+ 2p"
		    :height 145))
(if (string-match "fate.bcl.yamaguchi-u.ac.jp" system-name)
    (set-fontset-font
     nil 'japanese-jisx0208
     (font-spec :family "源ノ角ゴシック JP" :size 17))
)



;; macの設定
(if (string-match "if-air.local" system-name)
    (set-face-attribute 'default nil
;			:family "Osaka"
			:family "Ricty Diminished Discord"
			:height 160)
  )

;;macでヒラギノのライトが使いたいけどなぜかできない
(if (string-match "if-air.local" system-name)
    (set-fontset-font
     nil 'japanese-jisx0208
;     (font-spec  :family "HiraginoSans-W1" :size 30))
     (font-spec  :family "Hiragino Kaku Gothic Pro" :size 11))
;     (font-spec :family "Source Han Sans JP" :size 30 :weight light))
;     (font-spec :family "源ノ角ゴシック JP Light" :size 30))
;     (font-spec  :family "ヒラギノ角ゴ ProN" :size 30))
  )

;; ;; 英語と日本語の比率を1：2に設定するらしい
(add-to-list 'face-font-rescale-alist
             '(".*Hiragino Kaku Gothic Pro.*" . 1.2))

;; ;日本語
;; (set-fontset-font
;;  nil 'japanese-jisx0208
;; ; (font-spec :family "Hiragino Kaku Gothic")) ;; font
;; ;(font-spec :family "VL Pゴシック")) ;; font
;; ; (font-spec :family "源ノ角ゴシック JP")) ;; font
;; ; (font-spec :family "源真ゴシック-light")) ;; font
;;  (font-spec :family "源真ゴシック" :size 16)) ;; font
;; ; (font-spec :family "Ricty Diminished Regular"))


;; 行間の設定
(setq-default line-spacing 3)
;;-------------------------------------------------------------------------;;



;; ステータスバーに日本語英語表示したかったけどうまくできない
;; (defun suzuki-mac-input-method-decorate (roman-source japanese-source)
;;   (mac-set-input-method-parameter japanese-source 'title "あ")
;;   (mac-set-input-method-parameter japanese-source 'cursor-color "red")
;;   (mac-set-input-method-parameter roman-source 'cursor-color "blue"))

;; (when (boundp 'mac-input-method-parameters)
;;   (setq default-input-method "MacOSX")
;;   (cond
;;    ;; ことえり
;;    ((string-match "com.apple.inputmethod.Kotoeri" (mac-get-current-input-source))
;;     (suzuki-mac-input-method-decorate
;;      "com.apple.inputmethod.Kotoeri.Roman"
;;      "com.apple.inputmethod.Kotoeri.Japanese"))
;;    ;; Google 日本語入力
;;    ((string-match "com.google.inputmethod.Japanese" (mac-get-current-input-source))
;;     (suzuki-mac-input-method-decorate
;;      "com.google.inputmethod.Japanese.Roman"
;;      "com.google.inputmethod.Japanese.base"))))
