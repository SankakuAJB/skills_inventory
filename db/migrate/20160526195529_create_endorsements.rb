class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :employee_id
      t.integer :skill_id
      t.integer :user_id
      t.integer :endorser_id

      t.timestamps null: false
    end
  end
end
