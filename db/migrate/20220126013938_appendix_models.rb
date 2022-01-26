class AppendixModels < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :model, foreign_key: true
    add_reference :purchases, :model, foreign_key: true
    add_reference :rents, :model, foreign_key: true
    add_reference :searches, :model, foreign_key: true  
  end
end
