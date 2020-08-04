class ResidentUser < ApplicationRecord
  belongs_to :user
  belongs_to :resident
end
