class CreateFacebookPosts < ActiveRecord::Migration
  def change
    create_table :facebook_posts do |t|

      t.timestamps null: false
    end
  end
end
