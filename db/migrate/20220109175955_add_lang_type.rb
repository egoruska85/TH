class AddLangType < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :name_en, :string
  end
end
