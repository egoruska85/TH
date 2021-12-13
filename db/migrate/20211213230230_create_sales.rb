class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :title_ru
      t.string :title_tm
      t.text :text_ru
      t.text :text_tm
      t.string :year
      t.string :price
      t.string :phone
      t.string :email
      t.boolean :sales
      t.boolean :cashless
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
