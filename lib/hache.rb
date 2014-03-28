module Hache
  HTML_ESCAPE = {
    "&" => "&amp;",
    ">" => "&gt;",
    "<" => "&lt;",
    '"' => "&quot;",
    "'" => "&#x27;"
  }

  def self.h(str)
    str.to_s.gsub(/[&"'><]/, HTML_ESCAPE)
  end
end
