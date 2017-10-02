class AddGameTable < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
        t.string :letters
    end
  end
end
