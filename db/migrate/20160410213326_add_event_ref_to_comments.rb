#Created by : Tarika Bedse 

class AddEventRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :event, index: true, foreign_key: true
  end
end
