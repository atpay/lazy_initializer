Gem::Specification.new do |s|
  s.name        = 'lazy_initializer'
  s.version     = '0.0.1'
  s.date        = '2013-06-08'
  s.summary     = "Lazy initializer helper class"
  s.authors     = ["James Kassemi"]
  s.email       = 'james@atpay.com'
  s.files       = `git ls-files`.split($/)
  s.test_files  = s.files.grep(%r{^(test|spec|features)/})
  s.homepage    = "https://atpay.com"
end
