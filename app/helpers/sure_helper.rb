module SureHelper
  def escape_content(text)
    html_escape(text)
      .gsub(/\r\n|\r|\n/, "<br>")
      .gsub(/(?<url>http(s*):\/\/[A-Za-z0-9\'~+\-=_.,\/%\?!;:@#\*&\(\)]+)/, '<a href="\k<url>">\k<url></a>')
      .gsub(/&gt;&gt;(?<number>[0-9]+)/, '<a href="#\k<number>">&gt;&gt;\k<number></a>')
      .html_safe
  end
end
