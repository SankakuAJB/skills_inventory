class RemovedPersonIdFromEmployee < ActiveRecord::Migration
  def change
  	remove_column :employees, :person_id, :integer
  end
end
