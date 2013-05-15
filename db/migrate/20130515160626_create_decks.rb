class CreateDecks < ActiveRecord::Migration
  def change 
    create_table :decks do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
