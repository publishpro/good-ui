lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'good_ui/version'

Gem::Specification.new do |spec|
  spec.name          = 'good_ui'
  spec.version       = GoodUi::VERSION
  spec.authors       = ['Leonid Medovyy']
  spec.email         = ['leonid@goodlogik.com']

  spec.summary       = 'Easily manage complex UIs with Ruby and MetaProgramming'
  spec.homepage      = 'http://www.leonid.io/'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'hashie', '~> 3.5.7'
  spec.add_dependency 'rails', '> 5.2.0'

  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end