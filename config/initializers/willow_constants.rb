# Add the names of your models to the array for them to appear in branch selections
WillowLeaves = {'Dynamic Page' => 'Page', 
  'Static Page' => 'Willow::StaticPage',
  'Branch' => 'Willow::Branch'
}

HomePage = Page.where(:home_page => true).first || Page.where(:title => "Home").first
ContactPage = Page.where(:contact_page => true).first || Page.where(:title => "Contact Us").first
