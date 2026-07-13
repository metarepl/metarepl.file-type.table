(defsystem "lamb.files.table"
  :description "xlsx csv open, convert and report, df manipulations"
  :author "common-lamb (https://github.com/common-lamb)"
  :version "0.0.1"
  :license "MIT"
  :depends-on (
               ;; essential
               :cmd
               :str
               :alexandria
               :serapeum
               :iterate
               :bordeaux-threads
               ;; this project
               :filesystem-utils
               :fuzzy-match
               :file-finder
               :transducers
               ;; clone
               :filepaths
               :lisp-xl
               :lamb.base.click
               :lisp-stat
               )
  :serial t
  :components ((:file "xlsx-ops")
               (:file "csv-ops")
               (:file "df-ops")
               ))
