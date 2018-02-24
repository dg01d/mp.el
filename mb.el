(require 'request)
(defun post2mb ()
  (interactive)
  (if (yes-or-no-p "Are you sure you want to post this?" )
      (request
       mb-domain
       :type "POST"
       :data (json-encode `((type . ["h-entry"]) (properties (content . [,(buffer-substring-no-properties (point-min) (point-max))]))))
       :headers  `(("Content-Type" . "application/json") ("Authorization".,(format "Bearer %s" mb-auth)))
       :success (cl-function 
                 (lambda (&key data &allow-other-keys)
                   (message "Success")))))
