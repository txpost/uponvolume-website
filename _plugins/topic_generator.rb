# Generates a page per topic at /topics/<slug>/.
# Required because Jekyll's built-in `site.tags` only works with posts collection,
# not custom collections like `notes`. We iterate notes' `topics` frontmatter
# and emit a page for each unique topic, rendered via _layouts/tag.html.

module Jekyll
  class TopicPageGenerator < Generator
    safe true

    def generate(site)
      topics = site.collections['notes'].docs
        .flat_map { |doc| doc.data['topics'] || [] }
        .compact
        .uniq

      topics.each do |topic|
        site.pages << TopicPage.new(site, site.source, topic)
      end
    end
  end

  class TopicPage < Page
    def initialize(site, base, topic)
      @site = site
      @base = base
      @dir  = File.join('topics', Jekyll::Utils.slugify(topic))
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag.html')
      self.data['tag']   = topic
      self.data['title'] = "Topic: #{topic}"
    end
  end
end
