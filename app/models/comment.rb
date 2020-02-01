class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  #{{"utf8"=>"✓", "comment"=>{"content"=>"i agree", "post_id"=>"1", "user_id"=>"1"}, "comment_user_attributes"=>{"username"=>"CoolPerson25"}, "commit"=>"Create Comment", "controller"=>"comments", "action"=>"create"} permitted: false>}
  #{"utf8"=>"✓", "comment"=>{"content"=>"great post!", "user_id"=>"1"}, "commit"=>"Create Comment", "controller"=>"comments", "action"=>"create"}

  def user_attributes=(user_attributes)
    if user_attributes[:username].present?
      self.user = User.find_or_create_by(username: user_attributes[:username])
    end
  end

end
