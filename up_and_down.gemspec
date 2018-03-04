
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "up_and_down/version"

Gem::Specification.new do |spec|
  spec.name          = "up_and_down"
  spec.version       = UpAndDown::VERSION
  spec.authors       = ["Abhishek kanojia"]
  spec.email         = ["abhishek.kanojia3193@gmail.com"]

  spec.summary       = "Site Up and Down for rails application."
  spec.description   = "Easily make your application up or down for maintenance"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files << Dir.glob("{lib}/**/*")
  spec.files << Dir.glob("{templates}/**")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rails", ">= 5.0.4"
end
