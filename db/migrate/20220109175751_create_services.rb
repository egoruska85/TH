class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name_ru
      t.string :name_tm
      t.string :name_en
      t.text :text_ru
      t.text :text_tm
      t.text :text_en

      t.timestamps
    end
  end
end
