package com.example.service

import com.stripe.Stripe
import com.stripe.model.PaymentIntent
import org.springframework.stereotype.Service

@Service
class PaymentProcessor {
    // Stripe API key in companion object
    companion object {
        private const val STRIPE_KEY = "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9"
        
        // AWS credentials in companion object
        private const val AWS_ACCESS_KEY = "AKIAIOSFODNN7EXAMPLE"
        private const val AWS_SECRET_KEY = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    }
    
    init {
        // Initialize Stripe with API key
        Stripe.apiKey = STRIPE_KEY
    }
    
    fun processPayment(amount: Double): String {
        try {
            // Database connection string in method
            val dbUrl = "jdbc:postgresql://localhost:5432/mydb?user=kotlinuser&password=KotlinPass123!@#"
            
            // JWT secret in method
            val jwtSecret = "your-256-bit-secret"
            
            val intent = PaymentIntent.create(
                mapOf(
                    "amount" to (amount * 100).toInt(),
                    "currency" to "usd",
                    "payment_method_types" to listOf("card")
                )
            )
            
            return intent.clientSecret
        } catch (e: Exception) {
            // API key in error message (bad practice)
            println("Error processing payment with key: $STRIPE_KEY")
            throw e
        }
    }
    
    private fun sendEmailConfirmation(email: String) {
        // SMTP credentials in private method
        val smtpConfig = mapOf(
            "host" to "smtp.gmail.com",
            "port" to 587,
            "username" to "kotlin@gmail.com",
            "password" to "KotlinPass123!@#"
        )
        
        // Email sending logic here
    }
    
    // API key in function documentation (bad practice)
    /**
     * Process refund using Stripe API
     * API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
     */
    fun processRefund(paymentId: String) {
        // Refund logic here
    }
    
    // GitHub token in comment (bad practice)
    // ghp_123456789abcdefghijklmnopqrstuvwxyz
    fun fetchGithubData() {
        // GitHub API call logic here
    }
} 