module ProductosHelper
def producto_error_messages!
return "" if @producto.errors.empty?
messages = @producto.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
sentence = I18n.t("errors.messages.not_saved",
:count => @producto.errors.count,
:resource => @producto.class.model_name.human.downcase)
html = <<-HTML
<div id="error_explanation">
<h2>#{sentence}</h2>
<ul>#{messages}</ul>
</div>
HTML
html.html_safe
end
def producto_error_messages?
@producto.errors.empty? ? false : true
end
end