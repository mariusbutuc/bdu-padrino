class CreateDownloadableResources < ActiveRecord::Migration
  def change
    create_table :downloadable_resources do |t|
      t.string    :title
      t.string    :url
      t.text      :description
      t.boolean   :active,      default: false
      t.integer   :position
      t.timestamps
    end
  end
end
