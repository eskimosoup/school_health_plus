class Page < ActiveRecord::Base
  
  validates :title, {:presence => true}
  
  extend FriendlyId
  friendly_id :name, :use => :slugged
  
  is_a_leaf
  
  mount_uploader :image, PageImageUploader
  
  after_save :restart
  
  def name
    title
  end
  
  def route
    "{:controller => '/pages', :action => 'show', :id => '#{self.slug}'}"
  end

  def restart
    if home_page
      restart_file = File.join(Rails.root, 'tmp', 'restart.txt')
      system "touch #{restart_file}"
    end
  end

  def meta_tags=value
    self[:meta_tags] = value.strip.blank? ? nil : value
  end
  
  def meta_description=value
    self[:meta_description] = value.strip.blank? ? nil : value
  end
  
  def self.layouts
    %w{ application }
  end
  
  def self.styles
    %w{ basic home snp }
  end
  
end
