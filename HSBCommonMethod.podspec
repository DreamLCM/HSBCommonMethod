
Pod::Spec.new do |s|
s.name             = 'HSBCommonMethod'
s.version          = '1.0.0'
s.summary          = 'Swift4的自定义 HSBCommonMethod'


s.description      = <<-DESC
Swift4 HSBCommonMethod
DESC

s.homepage         = 'https://github.com/DreamLCM/HSBCommonMethod'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'LCM' => '212763791@qq.com' }
s.source           = { :git => 'https://github.com/DreamLCM/HSBCommonMethod.git', :tag => s.version.to_s }

s.ios.deployment_target = '11.0'

s.source_files = 'HSBCommonMethod/HSBCommonMethod/Class'

end


#验证命令：pod lib lint HSBCommonMethod.podspec --verbose
#提交命令：pod trunk push HSBCommonMethod.podspec
