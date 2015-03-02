class CreateSitemaps < ActiveRecord::Migration
  def change
    create_table :sitemaps do |t|
      t.string :url
      t.string :link
      t.string :description
      t.timestamps
    end
  end
end
