class CreatePages < ActiveRecord::Migration
	
  def change
    create_table(:pages) do |t|
      t.string   :layout
      t.string   :style
      t.string   :title
      t.text     :summary
      t.text     :content
      t.string   :image
      t.string   :image_alt
      t.boolean  :home_page,    :default => false
      t.boolean  :contact_page, :default => false
      t.text     :meta_description
      t.text     :meta_tags
      t.string   :slug
      t.timestamps
    end
    add_index :pages, :slug, :unique => true
  end
  
end
