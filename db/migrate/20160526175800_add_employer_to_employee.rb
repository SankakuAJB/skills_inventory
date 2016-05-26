class AddEmployerToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :employer, :string
  end
end
