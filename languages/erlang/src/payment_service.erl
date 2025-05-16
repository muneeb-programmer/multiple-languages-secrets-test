-module(payment_service).
-export([process_payment/1, process_refund/1]).

% AWS credentials in module attributes
-define(AWS_ACCESS_KEY, "AKIAIOSFODNN7EXAMPLE").
-define(AWS_SECRET_KEY, "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY").

% Stripe API key in module attribute
-define(STRIPE_KEY, "sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9").

process_payment(Amount) ->
    try
        % Database connection string in function
        DbUrl = "postgresql://erlanguser:erlangpass123!@#@localhost:5432/erlangdb",
        
        % JWT secret in function
        JwtSecret = "your-256-bit-secret",
        
        % Process payment logic here
        {ok, "payment_processed"}
    catch
        _:Error ->
            % API key in error message (bad practice)
            io:format("Error processing payment with key: ~p~n", [?STRIPE_KEY]),
            {error, Error}
    end.

% SMTP credentials in private function
send_email_notification(Email) ->
    SmtpConfig = #{
        host => "smtp.gmail.com",
        port => 587,
        username => "erlang@gmail.com",
        password => "ErlangPass123!@#"
    },
    % Email sending logic here
    ok.

% API key in function documentation (bad practice)
%% @doc Process refund using Stripe API
%% API Key: sk_live_51HqX9K2J3k4L5m6n7o8p9q0r1s2t3u4v5w6x7y8z9
process_refund(PaymentId) ->
    % Refund logic here
    ok.

% GitHub token in comment (bad practice)
% ghp_123456789abcdefghijklmnopqrstuvwxyz
fetch_github_data() ->
    % GitHub API call logic here
    ok.

% Slack webhook in module documentation (bad practice)
%% @doc Payment Service Tests
%% Slack Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
test_payment() ->
    % Test implementation
    ok. 