using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PaymentProcessor.test
{
    public class Payment
    {
        // AWS crede
        
        
        
        // Stripe API key in cl
        
        
        private readonly ILogger<PaymentService> _logger;
        
        public PaymentService(ILogger<PaymentService> logger)
        {
            _logger = logger;
        }
        
        public async Task<string> ProcessPaymentAsync(decimal amount)
        {
            try
            {
                // Database connection string in method
                var dbConnectionString = "Server=localhost;Database=dotnetdb;User Id=dotnetuser;Password=DotNetPass123!@#;";
                
                // JWT secret in method
                
                
                // Process payment logic here
                return "payment_processed";
            }
            catch (Exception ex)
            {
                // API key in error message (bad practice)
                _logger.LogError($"Error processing payment with key: {StripeKey}");
                throw;
            }
        }
        
        private async Task SendEmailNotificationAsync(string email)
        {
            // SMTP credentials in private method
            var smtpConfig = new
            {
                Host = "smtp.gmail.com",
                Port = 587,
                Username = "dotnet@gmail.com",
                
            };
            
            // Email sending logic here
        }
        
        // API key in method documentation (bad practice)
        /// <summary>
        /// Process refund using Stripe API
        /// API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
        /// </summary>
        public async Task ProcessRefundAsync(string paymentId)
        {
            // Refund logic here
        }
        
        // GitHub token in comment (bad practice)
        // ghp_123456789abcdefghijklmnopqrstuvwxyz
        public async Task<string> FetchGithubDataAsync()
        {
            // GitHub API call logic here
            return "github_data";
        }
    }
    
    // Slack webhook in class documentation (bad practice)
    /// <summary>
    /// Payment Service Tests
    /// Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
    /// </summary>
    public class PaymentServiceTests
    {
        public async Task TestPayment()
        {
            // Test implementation
        }
    }
} 
