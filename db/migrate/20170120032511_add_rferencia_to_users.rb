class AddRferenciaToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :boss, index: true, foreign_key: true
  end
end
