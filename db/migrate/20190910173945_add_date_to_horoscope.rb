class AddDateToHoroscope < ActiveRecord::Migration[5.2]
  def change
    add_column :horoscopes, :date, :date
  end
end
