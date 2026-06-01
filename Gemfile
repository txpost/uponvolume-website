source "https://rubygems.org"

gem "jekyll", "~> 4.3"

gem "jekyll-redirect-from", "~> 0.16"
gem "jekyll-sitemap",       "~> 1.4"

# Local dev only — needed since Ruby 3 dropped webrick from stdlib
group :jekyll_plugins do
  gem "webrick", "~> 1.8"
end

# Tag-page generator is a custom plugin in _plugins/; no extra gem needed.
