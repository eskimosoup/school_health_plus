class CaseStudiesController < ApplicationController
  
  def index
    @case_studies = CaseStudy.page(params[:page]).per(10)
    @current_leaf = Willow::StaticPage.find_by_name('Case Studies')
    @right_pages = Page.where(:title => ['Universal Services', 'School Health Service'])
    @title = "#{controller_name.titleize}"
  end
  
  def show
    @case_study = CaseStudy.find(params[:id])
    @current_leaf = Willow::StaticPage.find_by_name('Case Studies')
    @meta_description = @case_study.meta_description
    @meta_tags = @case_study.meta_tags
    @title = @case_study.title
  end
  
end
