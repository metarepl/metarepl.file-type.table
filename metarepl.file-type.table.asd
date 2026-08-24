(defsystem "metarepl.file-type.table"
  :description "xlsx csv open, convert and report, df manipulations"
  :author "metarepl (https://github.com/metarepl)"
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
               :shelter
               :lisp-stat
               )
  :serial t
  :components ((:file "xlsx-ops")
               (:file "csv-ops")
               (:file "df-ops")
               ))
