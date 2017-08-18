;; ;;-------------------------------------------------------------------------;;
;; ;twitering mode

(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(require 'twittering-mode )
 (setq twittering-allow-insecure-server-cert t)
(setq twittering-icon-mode t)

(setq twittering-account-authorization 'authorized)
(setq twittering-oauth-access-token-alist
      '(("oauth_token" . "214765325-3un04az3v8QxSWOfbh4PcZqWLjq3RK3W7og8Avs")
	("oauth_token_secret" . "zG2xncCVNQ9TSE0jc5s5FUzGm78Xgd5zzrM3XiVsY")
	("user_id" . "214765325")
	("screen_name" . "gin___if")))


;;自動更新の頻度（秒）
;(setq twittering-timer-interval 60)

;;表示する書式
(setq twittering-status-format "%i @%s %S %p: \n %T \n [%@]%r %R %f \n \n------------------------------------")

; 非公式RTする時の形式
; 大体こんな感じになる
; RT @mugijiru 渋谷隕石?
(setq twittering-retweet-format "RT @%s %t")


;; %iがアイコン
;; %sがユーザー名
;; %Sが名前
;; %pが鍵の有無(鍵垢は[x]と表示される)
;; \nで改行
;; %Tはツイートの内容
;; %@はつぶやいた時間
;; %rはリプライならその相手のユーザー名
;; %Rはリツイートならその相手のユーザー名
;; %fはクライアント名

(add-hook 'twittering-mode-init-hook 'twittering-enable-unread-status-notifier)

(setq twittering-initial-timeline-spec-string
      '(":home"
        ":replies"))

(add-hook 'twittering-new-tweets-hook
	  (lambda ()
	    (if (string=
		 (twittering-timeline-spec-to-string 
		  twittering-new-tweets-spec) 
		 ":replies")
		(start-process "twittering-notify-sound" nil "mplayer"
			       "/usr/share/sounds/KDE-Im-User-Auth.ogg"))
	    (define-key twittering-mode-map (kbd "R") 'twittering-native-retweet)
))

; mode-line に API の残数を表示する
(setq twittering-display-remaining t)
;;-------------------------------------------------------------------------;;

