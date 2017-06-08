Pod::Spec.new do |s|
  s.name                = "categories"
  s.version             = "0.0.2"
  s.summary             = "常用的一些扩展类"
  s.description         = <<-DESC
                          方便新建项目的时候添加使用
                          DESC
  s.homepage            = "https://github.com/y500/categories"
  s.license             = { :type => 'MIT', :text => <<-LICENSE
                                                   do whatever you want
                                                   LICENSE
                          }
  s.author              = { "y500" => "y500" }
  s.platform            = :ios
  s.source              = { :git => "https://github.com/y500/categories.git", :tag => "0.0.2" }
  s.source_files        = 'Category/*.{h,m,a,c}'
  s.frameworks = 'UIKit', 'Foundation'
end
