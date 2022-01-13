class CreateTypesofrents < ActiveRecord::Migration[6.1]
  def change
    create_table :typesofrents do |t|
      t.string :name
      t.string :name_tm
      t.string :name_en

      t.timestamps
    end
  end
end
