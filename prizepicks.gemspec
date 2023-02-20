# frozen_string_literal: true

require_relative 'lib/prizepicks/version'

Gem::Specification.new do |spec|
  spec.name = 'prizepicks'
  spec.version = PrizePicks::VERSION
  spec.authors = ['Troy Underwood']
  spec.email = ['troyizzle@gmail.com']

  spec.summary = 'PrizePicks client'
  spec.description = 'PrizePick client to fetch data from the PrizePicks API.'
  spec.homepage = 'https://github.com/troyizzle/prizepicks'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday-cookie_jar'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-minitest'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'yard'
end
