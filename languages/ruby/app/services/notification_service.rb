class NotificationService
  def initialize
    # Slack webhook URL in initializer
    @slack_webhook = "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
    
    # AWS credentials in instance variable
    @aws_credentials = {
      access_key_id: "AKIAIOSFODNN7EXAMPLE",
      secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    }
  end

  def send_slack_notification(message)
    # Slack token in method
    slack_token = "xoxb-1234567890-1234567890-1234567890-1234567890"
    
    HTTParty.post(@slack_webhook, body: { text: message })
  end

  def send_email(to, subject, body)
    # SMTP settings in method
    smtp_settings = {
      address: "smtp.gmail.com",
      port: 587,
      user_name: "notifications@gmail.com",
      password: "EmailPass123!@#",
      authentication: "plain"
    }
    
    # Email sending logic here
  end

  def connect_to_database
    # Database credentials in method
    db_config = {
      adapter: "postgresql",
      host: "localhost",
      database: "mydb",
      username: "dbuser",
      password: "DbPass123!@#"
    }
    
    ActiveRecord::Base.establish_connection(db_config)
  end

  private

  def generate_jwt_token(user_id)
    # JWT secret in private method
    secret = "your-256-bit-secret"
    payload = { user_id: user_id, exp: 24.hours.from_now.to_i }
    
    JWT.encode(payload, secret, "HS256")
  end

  # API key in comment (bad practice)
  # GitHub Personal Access Token: ghp_123456789abcdefghijklmnopqrstuvwxyz
  def fetch_github_data
    # GitHub API call logic here
  end
end 