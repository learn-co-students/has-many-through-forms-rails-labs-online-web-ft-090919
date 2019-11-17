Category 
    has_many :post_categories
    has_many :posts, through: :post_categories

Comment  -- [join, has many through]
    belongs_to :user 
    belongs_to :post 

Post_Category  -- [join, many to many through]
    belongs_to :post 
    belongs_to :category 

Post
    has_many :post_categories
    has_many :categories, through: :post_categories
    has_many :comments 
    has_many :users, through:comments 

User
    has_many :comments
    has_many :posts, through: :comments




    
<div class=post-content>
<%= @post.title %>
<%= @post.content %>
<% @post.categories.each do |category| %>
  <%= category.name %>
<% end %>
Comments:
<% @post.comments.each do |comment| %>
  <%= comment.content %> 
  <% end %>
<% @post.comments.each do |c| %>
     <% users = [] %>
    <% users << link_to c.user.username, user_path(c.user) %>
  <%= users.uniq %>  
  <% end %>
</div>


<% @post.comments.each do |c| %>
    <%= link_to c.user.username, user_path(c.user) %> 
  <% end %>
</div>






<div class=post-content>
<%= @post.title %>
<%= @post.content %>
<% @post.categories.each do |category| %>
  <%= category.name %>
<% end %>

Comments:
    <% @post.comments.each do |comment| %>
         <%= comment.content %> 
    <% end %>

Users:
<% @post.users.uniq.each do |user| %>
    <%= link_to user.username, user_path(user) %> 
    <% end %>
</div>

New Comment:
  <%= form_for (@comment = Comment.new) do |f| %>
      <%= f.label "Content" %>
      <%= f.text_field :content %>
      <%= f.label "Username" %>
      <%= f.collection_select :user_id, User.all, :id, :username, :include_blank => true %>
      <%= f.label "New User" %>
      <%= f.fields_for :user, @comment.build_user do |user| %>
        <%= user.text_field :username %>
      <% end %>
      <%= f.hidden_field :post_id, value: @post.id %>
      <%= f.submit %>
    <% end %>




    <h1><%= @post.title %></h1>
    <p><%= @post.content %></p>
    <em>Category</em>
    <ul><% @post.categories.each do |category| %>
      <li><%= category.name %></li>
      <% end %>
    </ul>
    <br />
    <br />
    <em>Comments</em>
    <% @post.comments.each do |comment| %>
      <p><%= comment.user.username %> says: <%= comment.content %></p>
    <% end %>
    <p>Users</p>
    <ul>
    <% @post.users.uniq.each do |user| %>
      <li><%= link_to user.username, user_path(user) %></li>
    <% end %>
    </ul>
    <h3>Add a New Comment</h3>
    <%= form_for(@comment = Comment.new) do |f| %>
      <%= f.label :content %>
      <%= f.text_field :content %><br /><br />
      <%= f.label "Username" %>
      <%= f.collection_select :user_id, User.all, :id, :username, :include_blank => true %><br /><br />
      <%= f.label "New User:" %>
      <%= f.fields_for :user, @comment.build_user do |user| %>
        <%= user.text_field :username %>
      <% end %><br />
      <br />
      <input type="hidden" name="comment[post_id]" value="<%= @post.id %>">
      <%= f.submit %>
    <% end %>
