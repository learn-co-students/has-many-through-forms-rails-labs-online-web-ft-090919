class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user #allows the access to nested attributes for a given user 

  

  def user_attributes=(user_attributes) #setting the user attributes 
    self.user = User.find_or_create_by(username: user_attributes[:username]) unless user_attributes[:username].blank?
  end 
end
#get the instance of user check if on is there and if not create on by using the attr username. if the username is vlank dont 
