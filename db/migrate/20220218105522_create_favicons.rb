class CreateFavicons < ActiveRecord::Migration[6.1]
  def change
    create_table :favicons do |t|

      t.timestamps
    end
  end
end
