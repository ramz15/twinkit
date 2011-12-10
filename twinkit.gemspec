Gem::Specification.new do |s|
  s.name        = 'twinkit'
  s.version     = '0.0.2'
  s.summary     = "link parser for your twitter timeline"
  s.description = "parses all links and titles of the links from any twitter user"
  s.authors     = ["Karl Gusner"]
  s.email       = 'karlgusner@gmail.com'
  s.files       = ["lib/twinkit.rb"]
  s.homepage    = "https://github.com/ramz15/twinkit"
  
  s.add_dependency "twitter", "~> 2.0"
  s.add_dependency "nokogiri"  
  
end