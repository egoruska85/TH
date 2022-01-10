class CreateAboutimages < ActiveRecord::Migration[6.1]
  def change
    create_table :aboutimages do |t|

      t.timestamps
    end
  end
end
