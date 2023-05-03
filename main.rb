require 'bcrypt'
users = [
    {username: "pooja", password:"password1"},
    {username:"akansha",password:"password2"},
    {username:"pratiksha",password:"password3"}
]
def create_hash(pass)
 p BCrypt::Password.create(pass)
end

def verify_hash(pass)
    p BCrypt::Password.new(pass)
end

def create_secure_user(list_of_user)
    list_of_user.each do |user_record|
        user_record[:password] = create_hash(user_record[:password])
    end
    list_of_user
end
new_user = create_secure_user(users)
puts new_user
def authenticate_user(username,password,list_of_user)
    list_of_user.each do |user_record|
        if user_record[:username] == username && verify_hash(user_record[:password]) == password
            return user_record
        end
    end
    "credentials were not correct"
end
    p authenticate_user("pooja","password1",users)