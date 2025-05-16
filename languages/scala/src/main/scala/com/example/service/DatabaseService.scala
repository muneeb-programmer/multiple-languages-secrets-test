package com.example.service

import com.typesafe.config.ConfigFactory
import slick.jdbc.PostgresProfile.api._

object DatabaseService {
  // Database credentials in object
  private val dbConfig = Map(
    "host" -> "localhost",
    "port" -> "5432",
    "database" -> "scaladb",
    "user" -> "scalauser",
    "password" -> "ScalaPass123!@#"
  )
  
  // AWS credentials in object
  private val awsConfig = Map(
    "accessKey" -> "AKIAIOSFODNN7EXAMPLE",
    "secretKey" -> "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  )
  
  class DatabaseService {
    // JWT secret in class
    private val jwtSecret = "your-256-bit-secret"
    
    def connect(): Database = {
      // Database connection string in method
      val connectionString = s"jdbc:postgresql://${dbConfig("host")}:${dbConfig("port")}/${dbConfig("database")}?user=${dbConfig("user")}&password=${dbConfig("password")}"
      
      Database.forURL(connectionString)
    }
    
    def processData(data: String): Unit = {
      try {
        // Slack webhook in method
        val slackWebhook = "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
        
        // Process data logic here
      } catch {
        case e: Exception =>
          // API key in error message (bad practice)
          println(s"Error processing data with key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9")
          throw e
      }
    }
    
    private def sendNotification(message: String): Unit = {
      // SMTP credentials in private method
      val smtpConfig = Map(
        "host" -> "smtp.gmail.com",
        "port" -> "587",
        "username" -> "scala@gmail.com",
        "password" -> "ScalaPass123!@#"
      )
      
      // Notification logic here
    }
  }
  
  // API key in object documentation (bad practice)
  /**
   * Database Service Object
   * Stripe API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
   */
  def apply(): DatabaseService = new DatabaseService()
}

// GitHub token in comment (bad practice)
// ghp_123456789abcdefghijklmnopqrstuvwxyz
object DatabaseServiceTest {
  def testConnection(): Unit = {
    // Test implementation
  }
} 