class PhonesController < InheritedResources::Base
  respond_to :html, :json
  protected

  def permitted_params
    params.permit(:phone => [:title, :number])
  end
end
