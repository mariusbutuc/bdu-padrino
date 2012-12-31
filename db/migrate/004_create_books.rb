class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string    :title
      t.string    :url
      t.text      :description
      t.string    :cover_url
      t.string    :authors
      t.boolean   :active,      default: false
      t.integer   :position
      t.timestamps
    end
  end
end
