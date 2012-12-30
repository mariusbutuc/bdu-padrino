class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :icon_url
      t.timestamps
    end
  end
end
