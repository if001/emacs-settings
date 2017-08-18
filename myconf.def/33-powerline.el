;; 

(require 'powerline)
(powerline-default-theme)

(set-face-attribute 'mode-line nil
;		    :foreground "#fff"
		    :foreground "#696969"
		    :background "SkyBlue"
		    :box nil)

(set-face-attribute 'powerline-active1 nil
;		    :foreground "#fff"
		    :foreground "#696969"
		    :background "LightCyan"
		    :inherit 'mode-line)

(set-face-attribute 'powerline-active2 nil
;		    :foreground "#000"
		    :foreground "#696969"
		    :background "SkyBlue"
		    :inherit 'mode-line)


;; 3Dモードオフ
(set-face-attribute 'mode-line-inactive nil
		    :box nil)
