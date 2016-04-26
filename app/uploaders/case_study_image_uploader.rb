class CaseStudyImageUploader < Chronicler::ImageUploader
  
  version :index do
    process :resize_to_fill => [220, 175]
  end
  
  version :show do
    process :resize_to_fit => [300, 1000]
  end
  
  version :right do
    process :resize_to_fill => [247, 196]
  end
  
end
