module ApplicationHelper
  def current_entity
    current_user || current_owner
  end
end
