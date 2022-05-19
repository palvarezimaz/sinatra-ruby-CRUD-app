
def create_user(name, email, password, user_role)
  password_digest = BCrypt::Password.create(password)

  cryptonite("INSERT INTO users(name, email, password_digest, user_role) VALUES($1, $2, $3, $4)", [name, email, password_digest, user_role])
  
  redirect '/sign_up'
end

def find_user_by_email(email)
  users = cryptonite("SELECT * FROM users WHERE email = $1", [email])

  if users.to_a.count > 0
    users[0]
  else
    nil
  end
end

def find_user_by_name(name)
  users = cryptonite("SELECT * FROM users WHERE name = $1", [email])

  if users.to_a.count > 0
    users[0]
  else
    nil
  end
end

def find_user_by_id(id)
  cryptonite("SELECT * FROM users WHERE id = $1", [id])[0]
end