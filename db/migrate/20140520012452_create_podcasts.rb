class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :series

      t.timestamps
    end
  end
end
