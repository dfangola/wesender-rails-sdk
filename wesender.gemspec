lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wesender/version"

Gem::Specification.new do |spec|
  spec.name                     = "wesender"
  spec.version                  = Wesender::VERSION
  spec.authors                  = ["cabanga"]
  spec.email                    = ["manucabanga@gmail.com"]

  spec.summary                  = %q{Wesender}
  spec.description              = %q{Wesender - RubyOnRails application integration library}
  spec.homepage                 = "https://github.com/Digital-Factory-Angola/wesender-rails-sdk"
  spec.license                  = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'httparty', '>= 0.13.7', '< 0.22.0'
  spec.add_development_dependency "rspec", "~> 3.5"

end