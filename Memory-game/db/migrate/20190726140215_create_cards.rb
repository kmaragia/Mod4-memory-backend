class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :card_image
      t.integer :level

      t.timestamps
    end
  end
end
