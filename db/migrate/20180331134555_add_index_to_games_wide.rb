class AddIndexToGamesWide < ActiveRecord::Migration[5.1]
  def change
    add_index :games_wide, [:hitterFirstName, :hitterLastName]
    add_index :games_wide, [:pitcherFirstName, :pitcherLastName]
  end
end
