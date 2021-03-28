require_relative 'lib/rbsig/version'

Gem::Specification.new do |spec|
  spec.name          = "rbsig"
  spec.version       = Rbsig::VERSION
  spec.authors       = ["Vojtech Vondra"]
  spec.email         = ["gems@vojtechvondra.cz"]

  spec.summary       = "A minimal implementation of signing git commits using ed25519"
  spec.description   = "Instead of installing the full GPG suite, this gem can sign stding to sign git commits"
  spec.homepage      = "https://github.com/vvondra/rbsig"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vvondra/rbsig"
  spec.metadata["changelog_uri"] = "https://github.com/vvondra/rbsig/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
