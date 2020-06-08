{:user
 {:plugins [;; When running an older version of CIDER (pre 0.18), use the
            ;; version that best matches M-x cider-version. For versions since
            ;; 0.18.0 use whatever version is the most recent.
            [cider/cider-nrepl "0.25.0-alpha1"]
            [lein-eftest "0.5.9"]
            [hiccup-bridge "1.0.1"]

            ;; Only necessary when using clj-refactor
            [org.clojure/tools.namespace "0.3.0-alpha4"]
            [lein-ns-dep-graph "0.2.0-SNAPSHOT"]
            [refactor-nrepl "2.4.0"]
            [lein-cloverage "1.1.1"]
            [reifyhealth/lein-git-down "0.3.5"]
            [lein-cljfmt "0.6.4"]
            [nrepl/nrepl "0.6.0"]
            [jonase/eastwood "0.3.5"]]

  :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                 [spyscope "0.1.6"]]

  :injections [(require 'spyscope.core)]
  }}
