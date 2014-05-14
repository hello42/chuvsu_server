class AbiturientsController < InheritedResources::Base
  protected

  def permitted_params
    params.permit(:abiturient => [:title, :body, :url, :img])
  end
end
