class AppendixBrands < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :brand, foreign_key: true
    add_reference :purchases, :brand, foreign_key: true
    add_reference :rents, :brand, foreign_key: true
    add_reference :searches, :brand, foreign_key: true    
  end
end
