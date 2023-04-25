module ApplicationHelper
  def markdown(text)
    if text.present?
      renderer = Redcarpet::Render::HTML.new
      markdown = Redcarpet::Markdown.new(renderer)
      markdown.render(text).html_safe
    else
      ""
    end
  end
end
