class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string    :title
      t.text      :description
      t.string    :img_url
      t.string    :url
      t.boolean   :active,      default: false
      t.integer   :position

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end