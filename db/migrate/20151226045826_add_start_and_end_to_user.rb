class AddStartAndEndToUser < ActiveRecord::Migration
  def change
    add_column :users, :start, :integer
    add_column :users, :end, :integer
  end
end
