class ResourceDecorator < Draper::Decorator
  delegate_all
  
  def resource_url
    "#{context[:base_url]}/api/"#{model.self.model_name.human.downcase.pluralize}"/#{model.id}"
  end
  
end