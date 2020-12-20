#!/usr/bin/env nix-shell
# -*- mode: shell; -*-
#! nix-shell -i bash -p "pkgs.emacs27WithPackages (p: [p.htmlize p.writegood-mode])"
set -x
emacs -batch --load do/blog.el --visit=$1 --funcall org-html-export-to-html
