class RemiGame < ApplicationRecord
  serialize :player_1, Hash
  serialize :player_2, Hash
  serialize :player_3, Hash
  serialize :player_4, Hash
end
