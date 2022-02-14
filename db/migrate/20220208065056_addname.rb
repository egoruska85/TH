class Addname < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :name, :string
    add_column :searches, :name, :string

  end
end
