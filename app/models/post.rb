class Post < ActiveRecord::Base
  validate :validCategory
  validates :title, presence: true
  validates :content, length: { minimum: 100 }

  def validCategory
    ["Fiction", "Non-Fiction"].include?(category)
  end
end
