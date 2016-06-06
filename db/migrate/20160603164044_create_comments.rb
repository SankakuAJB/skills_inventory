class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :commenter_id
      t.string :comment
      t.boolean :annonymous_flag
      t.boolean :show_flag

      t.timestamps null: false
    end
  end
end
