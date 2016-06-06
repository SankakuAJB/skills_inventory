class ChangeDefaultValueForShowFlag < ActiveRecord::Migration
  def change
  	change_column :comments, :show_flag, :boolean, :default => false
  end
end
