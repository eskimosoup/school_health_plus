class CreateCaseStudies < ActiveRecord::Migration
  
  def change
    create_table(:case_studies) do |t|
      t.string   :title
      t.text     :summary
      t.text     :content
      t.string   :image
      t.string   :image_alt
      t.text     :video_url
      t.integer  :position
      t.boolean  :display, :default => true
      t.timestamps
    end
  end
  
end
