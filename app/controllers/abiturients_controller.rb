class AbiturientsController < InheritedResources::Base
  respond_to :html, :json

  protected

  def permitted_params
    params.permit(:abiturient => [:title, :body, :url, :img, :notification])
    #p["abiturient"]["img"] = get_standart_image if p["abiturient"]["img"].empty?  p
  end

  def get_standart_image
    "http://chuvsu.vtrave.com/standart/chuvsu.jpg"
  end
end
