(if (file-accessible-directory-p "/data/data/com.termux/files")
    (progn (setenv "HOME" "/data/data/com.termux/files/home")
	   (setenv "PATH" (format "%s:%s" "/data/data/com.termux/files/usr/bin"
				  (getenv "PATH")))
	   (push "/data/data/com.termux/files/usr/bin" exec-path)))

