# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://127.0.0.1"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.

  sitemap.add '/'
  sitemap.add '/users'
  sitemap.add '/users/new'
  sitemap.add '/users/index'
  sitemap.add '/players'
  sitemap.add '/players/new'
  sitemap.add '/players/index'
  sitemap.add '/training_events'
  sitemap.add '/training_events/new'
  sitemap.add '/training_events/index'
  sitemap.add '/attends'
  sitemap.add '/attends/new'
  sitemap.add '/attends/index'

  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
