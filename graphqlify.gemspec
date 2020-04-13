require_relative 'lib/graphqlify/version'

Gem::Specification.new do |spec|
  spec.name          = "graphqlify"
  spec.version       = Graphqlify::VERSION
  spec.authors       = ["Anshul Khandelwal"]
  spec.email         = ["anshul@difference-engine.ai"]

  spec.summary       = %q{A batteries included graphql framework for rails}
  spec.description   = %q{Graphql is the best developer experience you can have while building api's. We make doing so from a rails app super fun and easy.}
  spec.homepage      = "https://graphqlify.difference-engine.ai"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/difference-engine/graphqlify"
  spec.metadata["changelog_uri"] = "https://github.com/difference-engine/graphqlify/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
