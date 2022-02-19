class Addbusy < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :busy, :boolean
    add_column :searches, :busy, :boolean
  end
end
