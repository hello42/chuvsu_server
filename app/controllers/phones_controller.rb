class PhonesController < InheritedResources::Base
  protected

  def permitted_params
    params.permit(:phone => [:title, :number])
  end
end
