Gem::Specification.new do |s|
  s.name        = 'twinkit'
  s.version     = '0.0.1'
  s.summary     = "link extracter from your timeline"
  s.description = "extract all links and titles from your twitter timeline"
  s.authors     = ["Karl Gusner"]
  s.email       = 'karlgusner@gmail.com'
  s.files       = ["lib/twinkit.rb"]
  s.homepage    = 'http://rubygems.org/gems/twinkit'
  
  s.add_dependency "twitter", "~> 2.0"
  s.add_dependency "nokogiri"  
  
end