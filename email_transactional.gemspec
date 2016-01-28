# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'email_transactional/version'

Gem::Specification.new do |spec|
  spec.name          = 'email_transactional'
  spec.version       = EmailTransactional::VERSION
  spec.authors       = ['zduci']
  spec.email         = ['ra.busuioc@gmail.com']
  spec.summary       =
    'Compiles email templates and provides an API to store/retrieve them'
  spec.description   =
    'Compiles email templates and provides an API to store/retrieve them'
  spec.homepage      = 'https://github.com/thebeansgroup/tx_queue'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry-stack_explorer'
  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'rake'

  # For faster file watcher updates on Windows:
  spec.add_runtime_dependency 'wdm', '~> 0.1.0'

  # Windows does not come with time zone data
  spec.add_runtime_dependency 'tzinfo-data'

  spec.add_runtime_dependency 'premailer', '~> 1.8.5'
  spec.add_runtime_dependency 'hpricot'
  spec.add_runtime_dependency 'nokogiri'
  spec.add_runtime_dependency 'dalli'
end