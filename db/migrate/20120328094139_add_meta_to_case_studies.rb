class AddMetaToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :meta_description, :text
    add_column :case_studies, :meta_tags, :text
  end
end
