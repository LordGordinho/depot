module ApplicationHelper
  def render_if(condition, record)
    return render record if condition
  end
end
