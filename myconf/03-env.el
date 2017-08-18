;; 対応する括弧を光らせる。
(show-paren-mode 1)

;バックアップファイルを作らない
(setq make-backup-files nil)

;オートセーブファイルを作らない
(setq auto-save-default nil)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; 画像ファイルを表示する
(auto-image-file-mode t)

;;-------------------------------------------------------------------------;;



;;-------------------------------------------------------------------------;;
;;mac のcommandとoptionを入れ替える
(if (string-match "ac171.local" system-name)
    (setq ns-command-modifier (quote meta))
  (setq ns-alternate-modifier (quote super))
  )


;;-------------------------------------------------------------------------;;



;;-------------------------------------------------------------------------;;
;;C-nを押し続けてもページが切り替わることなく一行ずつスクロール
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t) ;; shell-mode
;;-------------------------------------------------------------------------;;


;;-------------------------------------------------------------------------;;
;; Show tab, zenkaku-space, white spaces at end of line
;; http://www.bookshelf.jp/soft/meadow_26.html#SEC317
;; (defface my-face-tab         '((t (:background "Yellow"))) nil :group 'my-faces)
(defface my-face-zenkaku-spc '((t (:background "LightBlue"))) nil :group 'my-faces)
(defface my-face-spc-at-eol  '((t (:foreground "Red" :underline t))) nil :group 'my-faces)
(defvar my-face-tab         'my-face-tab)
(defvar my-face-zenkaku-spc 'my-face-zenkaku-spc)
(defvar my-face-spc-at-eol  'my-face-spc-at-eol)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-tab append)
     ("　" 0 my-face-zenkaku-spc append)
     ("[ \t]+$" 0 my-face-spc-at-eol append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
;; settings for text file
(add-hook 'text-mode-hook
          '(lambda ()
             (progn
               (font-lock-mode t)
               (font-lock-fontify-buffer))))
;; ;;-------------------------------------------------------------------------;;
;; ediff(M-x ediff)コントロールパネルを別フレームにしない
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; ;;-------------------------------------------------------------------------;;

;; かっこの自動挿入
(electric-pair-mode 1)


;; ;; Tmuxでクリップボードを共有する
;; (defun copy-from-osx ()
;;   (shell-command-to-string "pbpaste"))

;; (defun paste-to-osx (text &optional push)
;;   (let ((process-connection-type nil))
;;     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
;;       (process-send-string proc text)
;;       (process-send-eof proc))))

;; (setq interprogram-cut-function 'paste-to-osx)
;; (setq interprogram-paste-function 'copy-from-osx)
