class AddDateRangeToStarsigns < ActiveRecord::Migration[5.2]
  def change
    add_column :starsigns, :date_start, :datetime
    add_column :starsigns, :date_end, :datetime
  end
end
