
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sema/version"

Gem::Specification.new do |spec|
  spec.name          = "sema"
  spec.version       = Sema::VERSION
  spec.authors       = ["elibiz443"]
  spec.email         = ["elibiz443@gmail.com"]

  spec.summary       = "Simple Hello world gem in Swahili"
  spec.description   = "This gem displays Hello world in Swahili"
  spec.homepage      = "https://rubygems.org/gems/sema"
  spec.license       = "MIT"


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/elibiz443/sema"
    spec.metadata["changelog_uri"] = "https://github.com/elibiz/sema/changelogs"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "codelog", "~> 0.8.0"
  
  spec.add_dependency "minitest", "~> 5.0"
end
