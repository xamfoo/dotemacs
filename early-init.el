(when (string-equal system-type "android")
  ;; Add Termux binaries to PATH environment
  (let* ((termux-prefix "/data/data/com.termux")
         (termux-path (concat termux-prefix "/files/usr/bin"))
         (termux-home (concat termux-prefix "/files/home"))
         (termux-shell (concat termux-path "/bash"))
         (termux-local-bin (concat termux-home "/.local/bin"))
         (path-dirs (list
		     termux-local-bin
                     termux-path)))
    (setenv
     "PATH"
     (mapconcat 'identity path-dirs ":"))
    (setq exec-path (append path-dirs exec-path))
    (setenv "SHELL" termux-shell)
    (setq shell-file-name termux-shell)
    (setenv "HOME" termux-home)))
