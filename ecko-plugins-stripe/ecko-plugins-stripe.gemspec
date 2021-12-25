# frozen_string_literal: true

require_relative 'lib/ecko/plugins/stripe/version'

Gem::Specification.new do |spec|
  spec.name = 'ecko-plugins-stripe'
  spec.version = Ecko::Plugins::Stripe::VERSION
  spec.authors = ['Manish Sharma']
  spec.email = ['arnoltherasing@gmail.com']

  spec.summary = 'Mastodon stripe plugin, extendable to ecko-plugins sdk'
  spec.description = ''
  spec.homepage = 'https://github.com/magicstone-dev/ecko'
  spec.license = 'GPL/AGPL'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://github.com/magicstone-dev/ecko'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/magicstone-dev/ecko'
  spec.metadata['changelog_uri'] = 'https://github.com/magicstone-dev/ecko'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split('\x0').reject do |f|
  #     (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
  #   end
  # end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib app]
  spec.add_dependency 'stripe', '~> 5.39'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
