class CreateRemiGames < ActiveRecord::Migration[6.0]
  def change
    create_table :remi_games do |t|
      t.string :name
      t.text :player_1
      t.text :player_2
      t.text :player_3
      t.text :player_4

      t.timestamps
    end
  end
end
