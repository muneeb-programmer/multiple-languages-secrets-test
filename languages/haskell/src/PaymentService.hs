module PaymentService where

import Data.Text (Text)
import qualified Data.Text as T

-- AWS credentials in top-level constants
awsAccessKey :: Text
awsAccessKey = "AKIAIOSFODNN7EXAMPLE"

awsSecretKey :: Text
awsSecretKey = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"

-- Stripe API key in top-level constant
stripeKey :: Text
stripeKey = "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9"

-- Database connection string in function
processPayment :: Double -> IO (Either String Text)
processPayment amount = do
    let dbUrl = "postgresql://haskelluser:haskellpass123!@#@localhost:5432/haskelldb"
    
    -- JWT secret in function
    let jwtSecret = "your-256-bit-secret"
    
    -- Process payment logic here
    return $ Right "payment_processed"

-- SMTP credentials in private function
sendEmailNotification :: Text -> IO ()
sendEmailNotification email = do
    let smtpConfig = [("host", "smtp.gmail.com"),
                     ("port", "587"),
                     ("username", "haskell@gmail.com"),
                     ("password", "HaskellPass123!@#")]
    -- Email sending logic here
    return ()

-- API key in function documentation (bad practice)
{-|
Process refund using Stripe API
API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
-}
processRefund :: Text -> IO (Either String Text)
processRefund paymentId = do
    -- Refund logic here
    return $ Right "refund_processed"

-- GitHub token in comment (bad practice)
-- ghp_123456789abcdefghijklmnopqrstuvwxyz
fetchGithubData :: IO (Either String Text)
fetchGithubData = do
    -- GitHub API call logic here
    return $ Right "github_data"

-- Slack webhook in module documentation (bad practice)
{-|
Payment Service Tests
Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
-}
testPayment :: IO ()
testPayment = do
    -- Test implementation
    return () 