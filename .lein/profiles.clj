{:user
 {:dependencies [[hashp "0.2.0"]
                 [vlaaad/reveal "1.3.194"]
                 [refactor-nrepl "2.5.0"]]
  :injections [(require 'hashp.core)]
  :plugins [[venantius/ultra "0.6.0"]]
  :repl-options {:nrepl-middleware [vlaaad.reveal.nrepl/middleware,refactor-nrepl.middleware/wrap-refactor]}}}
