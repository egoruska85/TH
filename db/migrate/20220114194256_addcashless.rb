class Addcashless < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :cashless, :boolean
    add_column :searches, :cashless, :boolean
  end
end
