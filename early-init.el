(when (string-equal system-type "android")
  ;; Add Termux binaries to PATH environment
  (let* ((termux-prefix "/data/data/com.termux")
	 (termux-path (concat termux-prefix "/files/usr/bin")))
    (setenv "PATH" (concat (getenv "PATH") ":" termux-path))
    (setq exec-path (append exec-path (list termux-path)))
    (setenv "HOME" (concat termux-prefix "/files/home"))))
