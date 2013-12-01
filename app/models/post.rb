class Post < ActiveRecord::Base
  attr_accessible :title, :text

  validates :title, presence: :true,
  									length: { minimum: 5 }
  validates :text, presence: :true

end
