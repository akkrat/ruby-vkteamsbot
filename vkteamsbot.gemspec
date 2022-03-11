require_relative './lib/vkteamsbot.rb'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "vkteambot"
  s.version       = VKTeams::VERSION
  s.authors       = ["Protska Arthur"]
  s.email         = ["akkrat-nocode@outlook.com"]
  s.license       = '0BSD'

  s.summary       = %q{Ruby wrapper for VK Teams Bot API.}
  s.description   = %q{This gem is a simple and minimalistic library for creating VK Teams bots.}
  s.homepage      = "https://github.com/akkrat/ruby-vkteamsbot"
  # s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  s.metadata["homepage_uri"] = s.homepage

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'requests', '~> 1.0', '>= 1.0.2'
end