Pod::Spec.new do |s|
  s.name             = 'BRLMPrinterKit'
  s.version          = '4.0.2'
  s.summary          = "Pod for the BRLMPrinterKit / Brother's printers"
  s.description      = "This project is only a Pod for the Brother SDK v#{s.version}"
  s.homepage         = 'https://github.com/jonathantribouharet/BRLMPrinterKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jonathan VUKOVICH-TRIBOUHARET' => 'jonathan@eivo.fr' }
  s.source           = { :git => 'https://github.com/jonathantribouharet/BRLMPrinterKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'BRLMPrinterKit/BRLMPrinterKit.framework'
end
