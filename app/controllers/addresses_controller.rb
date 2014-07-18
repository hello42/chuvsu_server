class AddressesController < InheritedResources::Base
  protected

  def permitted_params
    params.permit(:address => [:title, :address, :url, :image ])
  end
end
