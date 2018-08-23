class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text  :text
      t.integer :user_id
      t.timestamps 
    end
  end
end
