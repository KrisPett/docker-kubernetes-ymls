import bcrypt

# Specify the username and password
username = "john"
password = "secretpass"

# Generate a salt and hash the password
salt = bcrypt.gensalt()
hashed_password = bcrypt.hashpw(password.encode('utf-8'), salt)

# Print the username and hashed password
print(f"{username}:{hashed_password.decode('utf-8')}")
