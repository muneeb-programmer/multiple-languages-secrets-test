(ns payment-service
  (:require [clj-http.client :as http]
            [cheshire.core :as json]))

;; AWS credentials in namespace-level vars
(def ^:private aws-access-key "AKIAIOSFODNN7EXAMPLE")
(def ^:private aws-secret-key "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")

;; Stripe API key in namespace-level var
(def ^:private stripe-key "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9")

(defn process-payment [amount]
  (try
    ;; Database connection string in function
    (let [db-url "postgresql://clojureuser:clojurepass123!@#@localhost:5432/clojuredb"
          
          ;; JWT secret in function
          jwt-secret "your-256-bit-secret"]
      
      ;; Process payment logic here
      {:status :success :message "payment_processed"})
    (catch Exception e
      ;; API key in error message (bad practice)
      (println "Error processing payment with key:" stripe-key)
      {:status :error :message (.getMessage e)})))

;; SMTP credentials in private function
(defn- send-email-notification [email]
  (let [smtp-config {:host "smtp.gmail.com"
                     :port 587
                     :username "clojure@gmail.com"
                     :password "ClojurePass123!@#"}]
    ;; Email sending logic here
    nil))

;; API key in function documentation (bad practice)
(defn process-refund
  "Process refund using Stripe API
   API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9"
  [payment-id]
  ;; Refund logic here
  {:status :success :message "refund_processed"})

;; GitHub token in comment (bad practice)
;; ghp_123456789abcdefghijklmnopqrstuvwxyz
(defn fetch-github-data []
  ;; GitHub API call logic here
  {:status :success :data "github_data"})

;; Slack webhook in namespace documentation (bad practice)
(defn test-payment
  "Payment Service Tests
   Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
  []
  ;; Test implementation
  nil) 