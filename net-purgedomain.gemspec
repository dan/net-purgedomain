$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "net-purgedomain"
  s.version       = "1.0"
  s.authors       = ["Dan Benjamin"]
  s.email         = "dan@hivelogic.com"
  s.homepage      = "https://github.com/dan/net-purgedomain"
  s.summary       = "Adds PURGEDOMAIN to Net::HTTP for domain-level cache purging requests in Varnish."
  s.description   = "Adds PURGEDOMAIN to Net::HTTP for domain-level cache purging requests."
  s.license       = 'MIT'
  s.require_paths = ['lib']
  s.files         = Dir["{lib}/net-purgedomain.rb", "net-purgedomain.gemspec", "LICENSE", "Rakefile", "README.md"]
end
