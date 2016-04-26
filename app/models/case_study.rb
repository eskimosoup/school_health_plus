class CaseStudy < ActiveRecord::Base
  
  validates :title, :summary, :content, :presence => true
  validates :image, :presence => {:message => "cannot be blank unless you have a video.", :if => "video_url.blank?"}
  validates :video_url, :presence => {:message => "cannot be blank unless you have an image.", :if => "image.blank? or remove_image?"}

  default_scope :conditions => {:display => true}, :order => "position"
  
  mount_uploader :image, CaseStudyImageUploader

  def meta_tags=value
    self[:meta_tags] = value.strip.blank? ? nil : value
  end
  
  def meta_description=value
    self[:meta_description] = value.strip.blank? ? nil : value
  end
  
  def resize_video(width=247, height=196)
    video_url.gsub(/width="\d*"/, "width=\"#{width}\"").gsub(/height="\d*"/, "height=\"#{height}\"")
  end
  
end
