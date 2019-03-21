Pod::Spec.new do |s|
    s.name             = 'EFIconFont'
    s.version          = '0.1.1'
    s.summary          = 'Yet another stupid wrapper of icon font.'
    
    s.description      = <<-DESC
    Yet another stupid wrapper of icon font, in Swift.
    DESC
    
    s.homepage         = 'https://github.com/EyreFree/EFIconFont'
    s.screenshots     = 'https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
    s.source           = { :git => 'https://github.com/EyreFree/EFIconFont.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/EyreFree777'
    
    s.ios.deployment_target = '8.0'
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |core|
        core.source_files = 'EFIconFont/Classes/Core/**/*'
    end
    
    s.subspec 'AntDesign' do |antdesign|
        antdesign.source_files = 'EFIconFont/Classes/AntDesign/**/*'
        antdesign.resources = 'EFIconFont/Assets/AntDesign/**/*'
        antdesign.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesome' do |fontawesome|
        fontawesome.source_files = 'EFIconFont/Classes/FontAwesome/**/*'
        fontawesome.resources = 'EFIconFont/Assets/FontAwesome/**/*'
        fontawesome.dependency 'EFIconFont/Core'
    end
end
