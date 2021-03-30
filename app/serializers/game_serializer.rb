class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bet, :start, :rotation, :quantity, :value, :turn, :max, :user_ids
  has_many :users
end
