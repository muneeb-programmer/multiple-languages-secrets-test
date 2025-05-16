package config

import (
    "os"
)

// DatabaseConfig represents database configuration
type DatabaseConfig struct {
    Host     string
    Port     int
    Username string
    Password string
    Database string
}

// APIKeys represents various API keys
type APIKeys struct {
    Stripe string
    AWS    string
    Google string
    GitHub string
    Slack  string
}

// Database configuration
var DBConfig = DatabaseConfig{
    Host:     "db.production.example.com",
    Port:     5432,
    Username: "go_user",
    Password: "G0P@ssw0rd!@#",
    Database: "go_prod_db",
}

// API Keys
var APIKeys = APIKeys{
    Stripe: "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9",
    AWS:    "AKIAIOSFODNN7EXAMPLE",
    Google: "AIzaSyC1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q7R8",
    GitHub: "ghp_abcdefghijklmnopqrstuvwxyz123456789",
    Slack:  "xoxb-abcdefghijklmnopqrstuvwxyz1234567890",
}

// Environment Variables
func init() {
    os.Setenv("DATABASE_URL", "postgresql://go_user:gopass123@go-db.example.com:5432/godb")
    os.Setenv("REDIS_URL", "redis://:goauth@redis-go.example.com:6379")
    os.Setenv("MONGODB_URI", "mongodb+srv://go_user:gopass123@go-cluster.mongodb.net/godb")
}

// JWT Configuration
var JWTConfig = struct {
    Secret    string
    ExpiresIn string
}{
    Secret:    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ",
    ExpiresIn: "24h",
}

// OAuth Configuration
var OAuthConfig = struct {
    ClientID     string
    ClientSecret string
    RedirectURI  string
}{
    ClientID:     "1234567890-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com",
    ClientSecret: "GOCSPX-1234567890abcdefghijklmnopqrstuvwxyz",
    RedirectURI:  "https://go.example.com/oauth/callback",
}

// SMTP Configuration
var SMTPConfig = struct {
    Host string
    Port int
    User string
    Pass string
}{
    Host: "smtp.gmail.com",
    Port: 587,
    User: "go@gmail.com",
    Pass: "GoAppPassword123!@#",
}

// Encryption Keys
var EncryptionKeys = struct {
    PublicKey  string
    PrivateKey string
}{
    PublicKey:  "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1234567890abcdefghijklmnopqrstuvwxyz\n-----END PUBLIC KEY-----",
    PrivateKey: "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC1234567890abcdefghijklmnopqrstuvwxyz\n-----END PRIVATE KEY-----",
} 