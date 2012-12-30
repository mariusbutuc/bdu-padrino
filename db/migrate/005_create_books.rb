class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :cover_url
      t.string :authors
      t.timestamps
    end
  end
end
