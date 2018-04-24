
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'new_umeng'
  s.version     = '0.0.9'
  s.date        = '2018-04-24'
  s.summary     = "new_umeng"
  s.description = "umeng API"
  s.authors     = ["liuhui"]
  s.email       = 'liuhuijisuanji@gmail.com'
  s.files       = ["lib/new_umeng.rb"]
  s.homepage    =
    'http://rubygems.org/gems/new_umeng'
  s.license       = 'MIT'

end
