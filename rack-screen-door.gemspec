# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'modular_arithmetic/version'

Gem::Specification.new do |s|
  s.name        = 'modular-arithmetic'
  s.version     = ModularArithmetic::VERSION
  s.authors     = ['John Nishinaga']
  s.email       = ['jingoro@casa-z.org']
  s.homepage    = 'https://github.com/jingoro/modular-arithmetic'
  s.summary     = 'Some simple modular arithmetic helper methods.'
  s.description = s.summary

  s.rubyforge_project = 'modular-arithmetic'

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'redcarpet'
end
