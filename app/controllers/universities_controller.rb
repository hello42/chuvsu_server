class UniversitiesController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:university => [:title, :body])
  end
end
