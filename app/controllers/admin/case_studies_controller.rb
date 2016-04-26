module Admin
  
  class CaseStudiesController < Manticore::ApplicationController
    
    crops_images_for CaseStudy, :image, { :show => { :fit => [300, 1000] } }
    
    def index
      @case_studies = CaseStudy.unscoped
    end
    
    def new
      @case_study = CaseStudy.new
    end
    
    def create
      @case_study = CaseStudy.new(params[:case_study])
      if @case_study.save
        redirect_to admin_case_studies_path, :notice => "Case Study successfully created."
      else
        render :action => 'new'
      end
    end
    
    def edit
      @case_study = CaseStudy.find(params[:id])
    end
    
    def update
      @case_study = CaseStudy.find(params[:id])
      if @case_study.update_attributes(params[:case_study])
        redirect_to admin_case_studies_path, :notice => "Case Study successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @case_study = CaseStudy.find(params[:id])
      @case_study.destroy
      redirect_to admin_case_studies_path, :notice => "Case Study destroyed."
    end
    
  end
  
end
