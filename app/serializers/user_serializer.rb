class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :name, :dice
end
