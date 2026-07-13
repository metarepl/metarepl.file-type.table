(in-package #:cl-user)
(defpackage #:df-ops
  (:use #:cl)
  (:export
   :df->overview
   :plateorg-df->map
   ))

(in-package :df-ops)




(defun df->overview (df &key column ends)
  "summarize dataframe for orientation"

  (pprint
   (lisp-stat:column-names df))

  (let (;; row count
        (r (length (lisp-stat:rows df)))
        ;; col count
        (c (length (lisp-stat:column-names df))))
    (format t "~&~%row,col:~A,~A~%" r c))

  (when column
    (print (lisp-stat:column df column)))

  (when ends
    (lisp-stat:head df)
    (lisp-stat:tail df)))

(defun plateorg-df->map (df col-codes col-names)
  "
ARGS:
df: lisp-stat dataframe from our plateorganizer file
col-codes: the symbol of the encoded-names column
col-names: the symbol of the entry-names column
DOES:
extracts columns as vectors
converts to lists
zips lists to an alist
RETS:
alist mapping encoded-names (ie our encoding) to entry-names
"
  (let* (
         (columns (coerce
                   (lisp-stat:columns df `(,col-codes ,col-names))
                   'list))

         (codes (coerce (first columns) 'list))
         (ids (coerce (second columns) 'list))
         )
    (mapcar #'cons codes ids)))
