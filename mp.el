(require 'request)
(defun post2mp ()
  (interactive)
  (if (yes-or-no-p "Are you sure you want to post this?" )
      (request
       mp-domain
       :type "POST"
       :data (json-encode `((type . ["h-entry"]) (properties (content . [,(buffer-substring-no-properties (point-min) (point-max))]))))
       :headers  `(("Content-Type" . "application/json") ("Authorization".,(format "Bearer %s" mp-auth)))
       :success (cl-function 
                 (lambda (&key data &allow-other-keys)
                   (message "Success")))))
