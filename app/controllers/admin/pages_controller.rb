module Admin
  
  class PagesController < Manticore::ApplicationController
    
    crops_images_for Page, :image, { :show => { :fit => [200, 1000] } }
    
    def index
      @pages = Page.order(params[:order])
    end
    
    def new
      @page = Page.new
    end
    
    def edit
      @page = Page.find(params[:id])
    end
    
    def create
      @page = Page.new(params[:page])
      if @page.save
        redirect_to admin_pages_path, :notice => "Page successfully created."
      else
        render :action => "new"
      end
    end
    
    def update
      @page = Page.find(params[:id])
      if @page.update_attributes(params[:page])
        redirect_to admin_pages_path, :notice => "Page successfully updated."
      else
        render :action => "edit"
      end
    end
    
    def destroy
      @page = Page.find(params[:id])
      @page.destroy
      # Make sure a new home page is set if the one being deleted is currently the home page.
      if Page.where(:homepage => true).empty?
				Page.first.update_attributes(:homepage => true)
      end
      redirect_to admin_pages_path, :notice => "Page destroyed."
    end
    
    def set_home_page
      Page.where(:home_page => true).each{|x| x.update_attributes(:home_page => false) }
      @page = Page.find(params[:id])
      @page.update_attributes(:home_page => true)
      redirect_to admin_pages_path, :notice => "Home Page set."
      restart_file = File.join(Rails.root, 'tmp', 'restart.txt')
      system "touch #{restart_file}"
    end
    
    def set_contact_page
      Page.where(:contact_page => true).each{|x| x.update_attributes(:contact_page => false) }
      @page = Page.find(params[:id])
      @page.update_attributes(:contact_page => true)
      redirect_to admin_pages_path, :notice => "Contact Page set."
      restart_file = File.join(Rails.root, 'tmp', 'restart.txt')
      system "touch #{restart_file}"
    end
    
  end
  
end
