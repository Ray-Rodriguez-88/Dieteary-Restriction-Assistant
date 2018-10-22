class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :id
  attributes :user_restrictions

   def user_restrictions
     object.user_restrictions
   end
end
