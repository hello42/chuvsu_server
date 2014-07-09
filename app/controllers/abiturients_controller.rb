class AbiturientsController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:abiturient => [:title, :body, :url, :img, :notification])
  end
end
