class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :title_ru
      t.string :title_tm
      t.string :title_en
      t.text :text_ru
      t.text :text_tm
      t.text :text_en
      t.references :region, null: false, foreign_key: true
      t.string :year
      t.references :typesofrent, null: false, foreign_key: true
      t.string :phone
      t.string :price
      t.string :email
      t.boolean :public

      t.timestamps
    end
  end
end
