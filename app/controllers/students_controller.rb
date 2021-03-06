class StudentsController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:student => [:typeof, :title, :body])
  end
end
