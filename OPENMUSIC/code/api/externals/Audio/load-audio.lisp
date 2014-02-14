;;===========================================================================
;OM API 
;Multiplatform API for OpenMusic
;;===========================================================================

(defpackage :om-audio
  (:nicknames "AU")
  (:use cl-user common-lisp))

(compile&load (make-pathname :directory (append (pathname-directory *load-pathname*) (list "LibAudioStream")) :name "LibAudioStream"))
(compile&load (make-pathname :directory (pathname-directory *load-pathname*) :name "las-audio-player"))                                      

(compile&load (make-pathname :directory (append (pathname-directory *load-pathname*) (list "libsndfile")) :name "libsndfile"))
(compile&load (make-pathname :directory (append (pathname-directory *load-pathname*) (list "libsamplerate")) :name "libsamplerate"))

(compile&load (make-pathname :directory (append (pathname-directory *load-pathname*) (list "libsndfile")) :name "sndfile-api"))
(compile&load (make-pathname :directory  (pathname-directory *load-pathname*) :name "audio-api"))

(push :om-audio *features*)


