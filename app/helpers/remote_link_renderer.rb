class RemoteLinkRenderer < WillPaginate::LinkRenderer
  def prepare(collection, options, template)
    @remote = options.delete(:remote) || {}
    super
    @options[:params].is_a?(Hash) ? @options[:params].merge({:only_path => false, :canvas => false}) : @options[:params] = {:only_path => false, :canvas => false}
  end

protected
  def page_link(page, text, attributes = {})
    @template.link_to(text, "#", :onclick => "#{@remote[:method_name]}({url: '#{url_for(page)}', container: '#{@remote[:container]}', parameters: { type: '#{@remote[:type]}' }}); return false;")
  end
end