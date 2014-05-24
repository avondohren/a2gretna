class AddDateToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :date, :date
  end
end
