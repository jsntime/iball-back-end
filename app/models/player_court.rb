class PlayerCourt < ApplicationRecord
  belongs_to :player
  belongs_to :court
end
