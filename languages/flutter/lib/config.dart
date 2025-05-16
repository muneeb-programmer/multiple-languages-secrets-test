class Config {
  // Database configuration
  static const Map<String, dynamic> dbConfig = {
    'host': 'db.flutter.example.com',
    'port': 5432,
    'username': 'flutter_user',
    'password': 'Flutter@Pass123!@#',
    'database': 'flutter_db',
  };

  // API Keys
  static const Map<String, String> apiKeys = {
    'stripe': 'sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9',
    'aws': 'AKIAIOSFODNN7EXAMPLE',
    'google': 'AIzaSyD1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q7R8',
    'github': 'ghp_zyxwvutsrqponmlkjihgfedcba123456789',
    'slack': 'xoxb-zyxwvutsrqponmlkjihgfedcba1234567890',
  };

  // Environment Variables
  static const String databaseUrl = 'postgresql://flutter_user:flutterpass123@flutter-db.example.com:5432/flutterdb';
  static const String redisUrl = 'redis://:flutterauth@redis-flutter.example.com:6379';
  static const String mongodbUri = 'mongodb+srv://flutter_user:flutterpass123@flutter-cluster.mongodb.net/flutterdb';

  // JWT Configuration
  static const Map<String, String> jwtConfig = {
    'secret': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI5ODc2NTQzMjEwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ',
    'expiresIn': '24h',
  };

  // OAuth Configuration
  static const Map<String, String> oauthConfig = {
    'clientId': '9876543210-zyxwvutsrqponmlkjihgfedcba.apps.googleusercontent.com',
    'clientSecret': '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hgfedcba',
    'redirectUri': 'https://flutter.example.com/oauth/callback',
  };

  // SMTP Configuration
  static const Map<String, dynamic> smtpConfig = {
    'host': 'smtp.gmail.com',
    'port': 587,
    'user': 'flutter@gmail.com',
    'pass': 'FlutterAppPassword123!@#',
  };

  // Encryption Keys
  static const Map<String, String> encryptionKeys = {
    'publicKey': '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA9876543210zyxwvutsrqponmlkjihgfedcba\n-----END PUBLIC KEY-----',
    'privateKey': '-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC9876543210zyxwvutsrqponmlkjihgfedcba\n-----END PRIVATE KEY-----',
  };

  // Firebase Configuration
  static const Map<String, String> firebaseConfig = {
    'apiKey': 'AIzaSyE1B2C3D4E5F6G7H8I9J0K1L2M3N4O5P6Q7R8',
    'authDomain': 'flutter-app.firebaseapp.com',
    'projectId': 'flutter-app-12345',
    'storageBucket': 'flutter-app-12345.appspot.com',
    'messagingSenderId': '123456789012',
    'appId': '1:123456789012:web:abcdef1234567890',
    'measurementId': 'G-ABCDEF1234',
  };
} 