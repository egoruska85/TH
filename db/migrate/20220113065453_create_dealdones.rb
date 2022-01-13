class CreateDealdones < ActiveRecord::Migration[6.1]
  def change
    create_table :dealdones do |t|

      t.timestamps
    end
  end
end
