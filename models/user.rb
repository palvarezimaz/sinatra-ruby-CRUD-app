
def create_user(name, email, password, user_role)
  users_email = cryptonite("SELECT * FROM users WHERE email = $1", [email])
  users_name = cryptonite("SELECT * FROM users WHERE name = $1", [name])

  if users_email.to_a.count != 0
    erb :'users/new', locals: {
      message: "It seems that THAT email has been registered already!" 
    }
  elsif users_name.to_a.count != 0
    erb :'users/new', locals: {
      message: "Ups, your user name has been taken already!"
    }
  else
  password_digest = BCrypt::Password.create(password)

  cryptonite("INSERT INTO users(name, email, password_digest, user_role) VALUES($1, $2, $3, $4)", [name, email, password_digest, user_role])

  erb :'users/new', locals: {
    message: "Success! Your user has been created as a registered user. Proceed to the login page"
  }
  end
end

def find_user_by_email(email)
  users = cryptonite("SELECT * FROM users WHERE email = $1", [email])

  if users.to_a.count > 0
    users[0]
  else
    nil
  end
end

def find_user_by_id(id)
  cryptonite("SELECT * FROM users WHERE id = $1", [id])[0]
end