class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string    :author
      t.text      :content
      t.string    :country
      t.string    :email
      t.boolean   :active,  default: false
      t.timestamps
    end
  end
end
