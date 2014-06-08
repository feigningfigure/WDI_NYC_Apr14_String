module ApplicationHelper

  def attribute_table model, attrs
    render partial: "shared/attribute_table", locals: { model: model, attrs: attrs }
  end

end
