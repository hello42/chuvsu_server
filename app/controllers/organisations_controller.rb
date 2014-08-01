class OrganisationsController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:organisation => [:name, :typeof, :body])
  end
end
