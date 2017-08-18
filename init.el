
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  -*- coding: utf-8-unix -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; load-pathの追加
;; 例えば、~/.emacs.d/local 以下にユーザ用の *.el, *.elc を置けます。
;; (add-to-list 'load-path "~/.emacs.d/local")
;; (add-to-list 'load-path "~/lib/emacs")
;; (add-to-list 'load-path "~/.emacs.d/auto-install"
;;-------------------------------------------------------------------------;;
;;C-x C-e でinit.elの設定反映(ショートカットC-f12)

;; M-x load-file RET ~/.emacs.d/init.el
;; で設定ファイルの再読み込み

;;-------------------------------------------------------------------------;;
;; パスの設定は、絶対パスで行う。
;; 相対パスでもうまく行く。ただし「../」のような表記だとうまく行かない
;;-------------------------------------------------------------------------;;
;; バイトコンパイル(*.el → *.elc)は、
;; M-x byte-compile-file RET
;;


;;-------------------------------------------------------------------------;;
;; load-pathの追加関数
;;emacs-lispのファイルを読み込むパスを設定

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; load-pathに追加するフォルダ
;; 2つ以上フォルダを指定する場合の引数 => (add-to-load-path "elisp" "xxx" "xxx")
;; (add-to-load-path "elisp")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/elpa/")
;;-------------------------------------------------------------------------;;


;;-------------------------------------------------------------------------;;
;;init-loaderの設定、設定ファイルを分割して読み込む
(require 'init-loader)
(init-loader-load "~/.emacs.d/myconf")
;;-------------------------------------------------------------------------;;

;;-------------------------------------------------------------------------;;
;;auto-installの設定
;;elispをインストール時.elファイルを自動でbyte-compile(.elを.elc化)
;;パスの通ったファイルへ自動配置
;;インストール後にC-c C-cで実行
(require 'auto-install)
;;インストールディレクトリの設定
(setq auto-install-directory "~/.emacs.d/elisp/")
;;(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
;;-------------------------------------------------------------------------;;





;; ;;-------------------------------------------------------------------------;;
;; ;;goモード
;; ;;-------------------------------------------------------------------------;;
;; (require 'go-mode-load)
;; (add-hook 'go-mode-hook
;;           '(lambda()
;;             (setq c-basic-offset 4)
;;             (setq indent-tabs-mode t)
;;             (local-set-key (kbd "M-.") 'godef-jump)
;;             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
;;             (local-set-key (kbd "C-c i") 'go-goto-imports)
;;             (local-set-key (kbd "C-c d") 'godoc)))
;; ;;-------------------------------------------------------------------------;;









(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (all-the-icons shackle flymake-css yaml-mode vcl-mode undo-tree tss tide smooth-scroll recentf-ext rainbow-delimiters powerline popup-imenu ng2-mode neotree multi-term markdown-mode julia-mode json init-loader hiwin flymake-python-pyflakes flymake flycheck-pycheckers ensime dired-toggle dired-subtree company-quickhelp)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default) :background "grey10")))))
