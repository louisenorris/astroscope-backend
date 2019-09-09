class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :dob, :starsign_id
end
