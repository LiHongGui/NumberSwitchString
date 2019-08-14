

Pod::Spec.new do |s|


  s.name         = "NumberSwitchString"
  s.version      = "1.0.2"
  s.summary      = "string,NSInteger互转"

  s.description  = <<-DESC
  string,NSInteger互转
                   DESC

  s.homepage     = "https://github.com/LiHongGui/NumberSwitchString.git"
 
  #s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.license =   { :type => "MIT", :file => "LICENSE" }


  s.author             = { "MichaelLi" => "1045359337@qq.com" }
 
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/LiHongGui/NumberSwitchString.git", :tag => "#{s.version}" }

  s.source_files  = "NumberSwitchString"

  s.requires_arc = true

end
