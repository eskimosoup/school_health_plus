class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  def accessibility
    @branch    = Willow::Branch.find_by_name("Accessibility")
    @branches  = []
    @branches += Willow::Branch.where(tree: 'Top').roots.order(:access_key)
    @branches += Willow::Branch.where(tree: 'Main').roots.order(:access_key)
  end
  
  def site_map
		@branch   = Willow::Branch.find_by_name("Site Map")
    @branches = Willow::Branch.where(tree: 'Main').order(:positions_depth_cache)
  end
  
  def contact_us
    @page = Page.find_by_title("Contact Us")
    @current_leaf = Willow::StaticPage.find_by_name("Contact Us")
    if request.post?
      if params[:name].blank? || params[:enquiry].blank? || (params[:telephone].blank? && params[:email].blank?)
        flash[:alert] = "Fields marked with an asterisk (*) are required. Either a telephone number or email address must be provided."
      else
        Mailer.contact_us(params[:name], params[:telephone], params[:email], params[:enquiry]).deliver
        flash[:notice] = "Your enquiry has been sent."
        redirect_to thank_you_path
      end
    end
  end
  
  def search
    @case_studies = CaseStudy.where([ "title LIKE :search OR summary LIKE :search", {:search => "%#{params[:search]}%"} ])
    @pages = Page.where([ "title LIKE :search OR summary LIKE :search", {:search => "%#{params[:search]}%"} ])
  end
  
end
