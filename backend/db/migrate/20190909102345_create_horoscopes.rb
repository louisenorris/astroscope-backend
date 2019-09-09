class CreateHoroscopes < ActiveRecord::Migration[5.2]
  def change
    create_table :horoscopes do |t|
      t.references :starsign, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
