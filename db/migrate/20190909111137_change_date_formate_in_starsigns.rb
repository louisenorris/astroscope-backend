class ChangeDateFormateInStarsigns < ActiveRecord::Migration[5.2]
  def change
    change_column :starsigns, :date_start, :date
    change_column :starsigns, :date_end, :date
  end
end
