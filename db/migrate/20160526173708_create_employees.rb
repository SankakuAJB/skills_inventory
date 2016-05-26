class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :person_id
      t.string :work_email

      t.timestamps null: false
    end
  end
end
