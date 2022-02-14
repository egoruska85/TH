class AddUsernameId < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :username_id, :integer
    add_column :searches, :username_id, :integer
  end
end
