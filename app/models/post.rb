class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def commenting_users
    self.comments.map {|comment| comment.user }.uniq
  end

  def categories_attributes=(attributes)
    self.categories << Category.find_or_create_by(name: attributes["0"][:name]) unless attributes["0"][:name].blank?
  end

end
