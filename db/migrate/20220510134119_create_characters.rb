class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :age
      t.integer :show_id
    end
  end
end
