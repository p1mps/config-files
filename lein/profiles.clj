{:user
 {:plugins [;; When running an older version of CIDER (pre 0.18), use the
            ;; version that best matches M-x cider-version. For versions since
            ;; 0.18.0 use whatever version is the most recent.
            [cider/cider-nrepl "0.23.0-SNAPSHOT"]
            [lein-eftest "0.5.9"]

            ;; Only necessary when using clj-refactor
            ;;[refactor-nrepl "2.4.0"]

            ;; Only necessary when using sayid
            [com.billpiel/sayid "0.0.17"]

            [lein-ring "0.12.5"]
            [lein-cloverage "1.1.1"]
            [reifyhealth/lein-git-down "0.3.5"]
            [lein-cljfmt "0.6.4"]
            [nrepl/nrepl "0.6.0"]
            [jonase/eastwood "0.3.5"]]

  :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                 [spyscope "0.1.6"]]

  :injections [(require 'spyscope.core)]
  ;; :repl-options
  ;; {:nrepl-middleware
  ;;  [refactor-nrepl.middleware/wrap-refactor ;; clj-refactor
  ;;   com.billpiel.sayid.nrepl-middleware/wrap-sayid ;; sayid
  ;;   ]}


  }}
