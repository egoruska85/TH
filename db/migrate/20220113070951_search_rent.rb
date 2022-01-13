class SearchRent < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :search, :boolean
  end
end
