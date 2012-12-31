class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string    :title
      t.string    :url
      t.text      :description
      t.string    :icon_url
      t.boolean   :active,      default: false
      t.integer   :position
      t.timestamps
    end
  end
end