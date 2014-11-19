class Middleman::Extensions::ViewsDirectory < Middleman::Extension
  register :views
  option   :views_dir, 'views', 'Directory for site views'

  def manipulate_resource_list(resources)
    views_directory = File.join(app.root, 'source', options.views_dir) << '/'
    views = Dir[File.join(views_directory, '**/*')]

    # Don't map directories
    views.reject! { |path| File.directory? path }

    resources + views.map do |source|
      view = app.sitemap.extensionless_path source[views_directory.length..-1]
      Middleman::Sitemap::Resource.new app.sitemap, view, source
    end
  end
end
