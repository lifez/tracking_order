class ChangeUserIdFromOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      add_foreign_key :orders, :users
    end
  end
end
