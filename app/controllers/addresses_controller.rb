class AddressesController < InheritedResources::Base
  respond_to :html, :json
  protected

  def permitted_params
    params.permit(:address => [:title, :address, :url, :image ])
  end
end
