def logged_in?
  if session['user_id']
    return true
  else
    return false
  end
end

def admin_login?
  if find_user_by_user_role(session['user_id'])["user_role"] == 'admin'
    return true
  else
    return false
  end
end

def current_user
  if logged_in?
    find_user_by_id(session['user_id'])
  else
    nil
  end
end