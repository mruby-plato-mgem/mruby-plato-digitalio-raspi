MRuby::Gem::Specification.new('mruby-plato-digitalio-raspi') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Plato developers'
  spec.description = 'Plato::DigitalIO class for Raspberry Pi board'

  spec.add_dependency('mruby-plato-gpio')
  spec.add_dependency('mruby-plato-gpio-raspi')
  spec.add_dependency('mruby-plato-digitalio')
end
