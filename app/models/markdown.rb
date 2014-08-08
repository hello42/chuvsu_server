class Markdown
  @@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

  def self.convert text
    @@markdown.render text
  end

end
