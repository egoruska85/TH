class AddRegion < ActiveRecord::Migration[6.1]
  def change
    add_reference :sales, :region, foreign_key: true
    add_reference :purchases, :region, foreign_key: true
  end
end
