class AddUserIdToBosses < ActiveRecord::Migration
  def change
    add_reference :bosses, :user, index: true, foreign_key: true
  end
end
