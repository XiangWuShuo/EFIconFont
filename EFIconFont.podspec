Pod::Spec.new do |s|
    s.name             = 'EFIconFont'
    s.version          = '0.4.1'
    s.summary          = 'Yet another stupid wrapper of icon font.'
    
    s.description      = <<-DESC
    An ordinary iconfont cocoaapods package helps you to use iconfont more easily in your project, in Swift.
    DESC
    
    s.homepage         = 'https://github.com/EyreFree/EFIconFont'
    s.screenshots     = 'https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true'
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

    s.subspec 'ElusiveIcons' do |elusiveicons|
        elusiveicons.source_files = 'EFIconFont/Classes/ElusiveIcons/**/*'
        elusiveicons.resources = 'EFIconFont/Assets/ElusiveIcons/**/*'
        elusiveicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesome' do |fontawesome|
        fontawesome.source_files = 'EFIconFont/Classes/FontAwesome/**/*'
        fontawesome.resources = 'EFIconFont/Assets/FontAwesome/**/*'
        fontawesome.dependency 'EFIconFont/Core'
    end

    s.subspec 'Ionicons' do |ionicons|
        ionicons.source_files = 'EFIconFont/Classes/Ionicons/**/*'
        ionicons.resources = 'EFIconFont/Assets/Ionicons/**/*'
        ionicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MaterialIcons' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIcons/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIcons/**/*'
        materialicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Complete' do |complete|
        complete.dependency 'EFIconFont/Core'
        complete.dependency 'EFIconFont/AntDesign'
        complete.dependency 'EFIconFont/ElusiveIcons'
        complete.dependency 'EFIconFont/FontAwesome'
        complete.dependency 'EFIconFont/Ionicons'
        complete.dependency 'EFIconFont/MaterialIcons'
    end
end
