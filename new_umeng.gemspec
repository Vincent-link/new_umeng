
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'new_umeng'
  s.version     = '0.0.3'
  s.date        = '2018-04-24'
  s.summary     = "new_umeng"
  s.description = "umeng API"
  s.authors     = ["liuhui"]
  s.email       = 'liuhuijisuanji@gmail.com'
  s.files       = ["lib/new_umeng.rb"]
  s.homepage    =
    'http://rubygems.org/gems/new_umeng'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "faraday", "~> 0.9"
  s.add_development_dependency "oj", "~> 2.12"
end
