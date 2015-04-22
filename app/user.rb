# new
class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :handle, String
  property :name, String
  property :password, Text
  property :password_confirmation, Text
end
