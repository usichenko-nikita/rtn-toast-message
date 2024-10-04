require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'rtn-toast-message'
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.source       = { :git => package['repository'], :tag => s.version }

  s.platforms    = { :ios => '11.0' }
  s.source_files = 'ios/**/*.{h,m,mm,swift}'

  s.dependency 'React'
  s.dependency 'React-Core'

  # Include dependencies for the New Architecture
  install_modules_dependencies(s)
end
