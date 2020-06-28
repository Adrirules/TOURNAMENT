class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :start_tournament
      t.datetime :end_tournament
      t.string :photo
      t.string :activity

      t.timestamps
    end
  end
end
