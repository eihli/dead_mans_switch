class AddMessageToFacebookPosts < ActiveRecord::Migration
  def change
    add_column :facebook_posts, :message, :string
  end
end
