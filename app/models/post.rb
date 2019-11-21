class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories #allow acess to nested attr for cateegory 

  def categories_attributes=(category_attributes) #setting cat att's 
    category_attributes.values.each do |category_attribute| #for each value of category attr do something 
      if category_attribute["name"].present? #is there a name present 
        category = Category.find_or_create_by(category_attribute) # set cat = to cat if it exists if not create one this makes sense bc in the line above we are checking if somthing is there or not 
        self.categories << category #take the instance of self and put it into category 
    end 
  end 
end 
end
