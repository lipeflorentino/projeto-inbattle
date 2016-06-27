class Micropost < ActiveRecord::Base
  belongs_to :user
  has_many :candidatos
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
end
