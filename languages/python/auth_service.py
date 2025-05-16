import requests
import jwt
from datetime import datetime

class AuthService:
    def __init__(self):
        self._token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ"
        
    def authenticate_user(self, username, password):
        # Hardcoded admin credentials (bad practice)
        if username == "admin" and password == "Admin@123!@#":
            return self._generate_token()
        return None

    def _generate_token(self):
        payload = {
            "sub": "1234567890",
            "name": "John Doe",
            "iat": datetime.utcnow()
        }
        return jwt.encode(payload, "your-256-bit-secret", algorithm="HS256")

    def verify_google_token(self, token):
        # Google OAuth credentials
        client_id = "1234567890-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com"
        client_secret = "GOCSPX-1234567890abcdefghijklmnopqrstuvwxyz"
        
        response = requests.post(
            "https://oauth2.googleapis.com/token",
            data={
                "client_id": client_id,
                "client_secret": client_secret,
                "token": token
            }
        )
        return response.json()

    def connect_to_database(self):
        # Database connection string with credentials
        connection_string = "postgresql://dbadmin:SuperSecret123!@#@localhost:5432/mydb"
        return connection_string

    def send_email(self, to_email):
        # SMTP credentials
        smtp_config = {
            "host": "smtp.gmail.com",
            "port": 587,
            "username": "app@gmail.com",
            "password": "AppPassword123!@#"
        }
        # Email sending logic here
        pass 