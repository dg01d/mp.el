# mb.el
A Emacs Lisp function to post to Micro.blog's

It requires the request module, and a variable named microblog-auth with a microblog app token. 

# Installation with Spacemacs.

1. Add mb.el to ~/.emacs.d/private/
2. Find dotspacemacs-additional-packages inside .spacemacs and add requests to the list
3. Add a line to the dotspacemacs/init function inside the setq-default function call that looks like: microblog-auth "ABC", where ABC is your app token. 
4. Add the following line to dotspacemacs/user-config function: (load "~/.emacs.d/private/mb.el")

# Usage

Start a new buffer, write what you want to post, and then run M-x post2mb; SPC SPC post2mb if you are using spacemacs
