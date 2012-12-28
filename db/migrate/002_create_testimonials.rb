class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.string    :author
      t.text      :content
      t.string    :country
      t.string    :email
      t.boolean   :active,  default: false
      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end
