class CreateContactdetails < ActiveRecord::Migration[6.1]
  def change
    create_table :contactdetails do |t|
      t.string :address_ru
      t.string :address_tm
      t.string :address_en
      t.string :phone1
      t.string :phone2
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
