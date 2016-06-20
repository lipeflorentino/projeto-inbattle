class Micropost < ActiveRecord::Base
  belongs_to :micropost
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
end
