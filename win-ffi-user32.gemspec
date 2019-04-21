require_relative 'lib/win-ffi/user32/version'

Gem::Specification.new do |gem|
  gem.name          = 'win-ffi-user32'
  gem.version       = WinFFI::User32::VERSION
  gem.summary       = 'FFI definitions for user32.dll Windows API'
  gem.description   = 'FFI definitions for user32.dll Windows API.'
  gem.license       = 'MIT'
  gem.authors       = %w'P3t3rU5'
  gem.email         = %w'pedro.at.miranda@gmail.com'
  gem.homepage      = 'https://github.com/P3t3rU5/win-ffi-user32'
  gem.require_paths = %w'lib'
  gem.files         = Dir['{lib/**/*.rb,*.md}']
  gem.add_dependency 'win-ffi-core', '~> 1'
  gem.add_dependency 'ffi-additions', '~> 0'
  gem.add_development_dependency 'rspec', '~> 3'
end
