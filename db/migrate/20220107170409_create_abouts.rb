class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.string :title_ru
      t.string :title_tm
      t.string :title_en
      t.string :text_ru
      t.string :text_tm
      t.string :text_en

      t.timestamps
    end
  end
end
