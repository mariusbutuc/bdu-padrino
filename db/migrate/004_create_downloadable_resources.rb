class CreateDownloadableResources < ActiveRecord::Migration
  def self.up
    create_table :downloadable_resources do |t|
      t.string    :title
      t.string    :url
      t.text      :description
      t.boolean   :active,      default: false
      t.integer   :position

      t.timestamps
    end
  end

  def self.down
    drop_table :downloadable_resources
  end
end
