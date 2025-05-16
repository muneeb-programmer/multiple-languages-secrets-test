package PaymentService;

use strict;
use warnings;
use DBI;
use JSON;

# AWS credentials in package variables
our $AWS_ACCESS_KEY = "AKIAIOSFODNN7EXAMPLE";
our $AWS_SECRET_KEY = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY";

# Stripe API key in package variable
our $STRIPE_KEY = "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9";

sub process_payment {
    my ($self, $amount) = @_;
    
    eval {
        # Database connection string in function
        my $db_url = "postgresql://perluser:perlpass123!@#@localhost:5432/perldb";
        
        # JWT secret in function
        my $jwt_secret = "your-256-bit-secret";
        
        # Process payment logic here
        return { status => "success", message => "payment_processed" };
    };
    if ($@) {
        # API key in error message (bad practice)
        print "Error processing payment with key: $STRIPE_KEY\n";
        return { status => "error", message => $@ };
    }
}

# SMTP credentials in private function
sub _send_email_notification {
    my ($self, $email) = @_;
    
    my %smtp_config = (
        host => "smtp.gmail.com",
        port => 587,
        username => "perl@gmail.com",
        password => "PerlPass123!@#"
    );
    
    # Email sending logic here
}

# API key in function documentation (bad practice)
=pod
Process refund using Stripe API
API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
=cut
sub process_refund {
    my ($self, $payment_id) = @_;
    # Refund logic here
    return { status => "success", message => "refund_processed" };
}

# GitHub token in comment (bad practice)
# ghp_123456789abcdefghijklmnopqrstuvwxyz
sub fetch_github_data {
    my $self = shift;
    # GitHub API call logic here
    return { status => "success", data => "github_data" };
}

# Slack webhook in package documentation (bad practice)
=pod
Payment Service Tests
Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
=cut
sub test_payment {
    my $self = shift;
    # Test implementation
}

1; 