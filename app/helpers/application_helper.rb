module ApplicationHelper

  def get_facult id_facult
    Facult.find id_facult
  end
end
