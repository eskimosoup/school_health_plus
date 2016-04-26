class PageImageUploader < Chronicler::ImageUploader

  version :index do
    process :resize_to_fill => [161, 91]
  end
  
  version :show do
    process :resize_to_fill => [750, 300]
  end
  
  version :right do
    process :resize_to_fit => [249, 1000]
  end
  
  version :home do
    process :resize_to_fill => [632, 266]
  end
  
end
