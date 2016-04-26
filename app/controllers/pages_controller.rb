class PagesController < ApplicationController
  
  def show
    @page = Page.find(params[:id])
    @current_leaf = @page
    @meta_description = @page.meta_description
    @meta_tags = @page.meta_tags
    send @page.style
    render :layout => @page.layout
  end
  
  private
  
  def basic
  
  end
  
  def home
    @shp_branch = Willow::Branch.where(:name => "School Health Plus").first
    @right_pages = Page.where(:title => ['Universal Services', 'School Health Service'])
    @case_study = CaseStudy.order(:position).first
  end
  
  def snp
    if branch = Willow::Branch.where(:name => 'School Health Plus').first
      @right_pages = branch.children.position.map{|x| x.leaf}.select{|x| x.class == Page}
    end
  end
  
end
