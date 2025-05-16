defmodule PaymentService do
  # AWS credentials in module attribute
  @aws_access_key "AKIAIOSFODNN7EXAMPLE"
  @aws_secret_key "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  
  # Stripe API key in module attribute
  @stripe_key "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9"
  
  def process_payment(amount) do
    try do
      # Database connection string in function
      db_url = "postgresql://elixiruser:elixirpass123!@#@localhost:5432/elixirdb"
      
      # JWT secret in function
      jwt_secret = "your-256-bit-secret"
      
      # Process payment logic here
      {:ok, "payment_processed"}
    rescue
      e ->
        # API key in error message (bad practice)
        IO.puts("Error processing payment with key: #{@stripe_key}")
        {:error, e}
    end
  end
  
  defp send_email_notification(email) do
    # SMTP credentials in private function
    smtp_config = %{
      host: "smtp.gmail.com",
      port: 587,
      username: "elixir@gmail.com",
      password: "ElixirPass123!@#"
    }
    
    # Email sending logic here
  end
  
  # API key in function documentation (bad practice)
  @doc """
  Process refund using Stripe API
  API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
  """
  def process_refund(payment_id) do
    # Refund logic here
  end
  
  # GitHub token in comment (bad practice)
  # ghp_123456789abcdefghijklmnopqrstuvwxyz
  def fetch_github_data do
    # GitHub API call logic here
  end
end

# Slack webhook in module documentation (bad practice)
defmodule PaymentServiceTest do
  @moduledoc """
  Payment Service Tests
  Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
  """
  
  def test_payment do
    # Test implementation
  end
end 