class PagesController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:page => [:title, :typeof, :body])
  end
end
