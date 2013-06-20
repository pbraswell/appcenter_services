class ResourceDecorator < Draper::Decorator
  delegate_all
  
  def resource_url
    klass = model.class
    "#{context[:base_url]}/api/#{klass.model_name.human.pluralize.downcase}/#{model.id}"
  end
  
end