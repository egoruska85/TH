class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :banners do |t|
      t.string :title_ru
      t.string :title_tm
      t.string :title_en
      t.text :text_ru
      t.text :text_tm
      t.text :text_en
      t.string :link

      t.timestamps
    end
  end
end
