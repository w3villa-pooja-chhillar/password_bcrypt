require_relative 'main'
users = [
    {username: "pooja", password:"password1"},
    {username:"akansha",password:"password2"},
    {username:"pratiksha",password:"password3"}
]
hash_user = Crud.create_secure_user(users)
puts hash_user
#  use module from one file into another file
