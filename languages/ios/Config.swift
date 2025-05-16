import Foundation

struct Config {
    // Database configuration
    struct DatabaseConfig {
        static let host = "db.ios.example.com"
        static let port = 5432
        static let username = "ios_user"
        static let password = "iOS@Pass123!@#"
        static let database = "ios_db"
    }
    
    // API Keys
    struct APIKeys {
        static let stripe = "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9"
        static let aws = "AKIAIOSFODNN7EXAMPLE"
        static let google = "AIzaSyE1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q7R8"
        static let github = "ghp_abcdefghijklmnopqrstuvwxyz123456789"
        static let slack = "xoxb-abcdefghijklmnopqrstuvwxyz1234567890"
    }
    
    // Environment Variables
    struct Environment {
        static let databaseUrl = "postgresql://ios_user:iosspass123@ios-db.example.com:5432/iosdb"
        static let redisUrl = "redis://:iosauth@redis-ios.example.com:6379"
        static let mongodbUri = "mongodb+srv://ios_user:iosspass123@ios-cluster.mongodb.net/iosdb"
    }
    
    // JWT Configuration
    struct JWTConfig {
        static let secret = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ"
        static let expiresIn = "24h"
    }
    
    // OAuth Configuration
    struct OAuthConfig {
        static let clientId = "1234567890-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com"
        static let clientSecret = "GOCSPX-1234567890abcdefghijklmnopqrstuvwxyz"
        static let redirectUri = "https://ios.example.com/oauth/callback"
    }
    
    // SMTP Configuration
    struct SMTPConfig {
        static let host = "smtp.gmail.com"
        static let port = 587
        static let user = "ios@gmail.com"
        static let pass = "iOSAppPassword123!@#"
    }
    
    // Encryption Keys
    struct EncryptionKeys {
        static let publicKey = """
        -----BEGIN PUBLIC KEY-----
        MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1234567890abcdefghijklmnopqrstuvwxyz
        -----END PUBLIC KEY-----
        """
        
        static let privateKey = """
        -----BEGIN PRIVATE KEY-----
        MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC1234567890abcdefghijklmnopqrstuvwxyz
        -----END PRIVATE KEY-----
        """
    }
    
    // Firebase Configuration
    struct FirebaseConfig {
        static let apiKey = "AIzaSyF1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q7R8"
        static let authDomain = "ios-app.firebaseapp.com"
        static let projectId = "ios-app-12345"
        static let storageBucket = "ios-app-12345.appspot.com"
        static let messagingSenderId = "987654321098"
        static let appId = "1:987654321098:ios:abcdef1234567890"
        static let measurementId = "G-HIJKLM1234"
    }
    
    // Apple Services
    struct AppleServices {
        static let teamId = "TEAM123456"
        static let keyId = "KEY123456"
        static let privateKey = """
        -----BEGIN PRIVATE KEY-----
        MIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQg+ZeVly6yPxJ3
        +vzJfKX7X5J3+vzJfKX7X5J3+vzJfKX7X5J3+vzJfKX7X5J3+vzJfKX7X5J3
        -----END PRIVATE KEY-----
        """
    }
} 