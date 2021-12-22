class AddTitleTm < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :name_tm, :string
  end
end
