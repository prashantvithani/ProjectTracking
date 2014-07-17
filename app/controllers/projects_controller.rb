class ProjectsController < ApplicationController
  def index
  	@project = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save
  		flash[:success] = 'Welcome to the project tracking app.'
  		redirect_to @project
  	else
  		render 'new'
  	end
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

  def destroy
    
  end
  
  private
  	def project_params
  		params.require(:project).permit(:name, :code, :description, :billing_type, :start, :deadline, :end, :github_url, :status)
  	end
end
