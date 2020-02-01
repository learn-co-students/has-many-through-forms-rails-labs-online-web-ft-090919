class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(cat_hashes)
      cat_hashes.each do |index, cat_attributes|
        if cat_attributes[:name].present?
          category = Category.find_or_create_by(name: cat_attributes[:name])
          if !self.categories.include?(category)
            #binding.pry
            self.post_categories.build(:category => category)
          end
        end
      end
  end

end
