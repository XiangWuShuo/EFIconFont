![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true)

<p align="center">
    <a href="https://travis-ci.org/EFPrefix/EFIconFont">
    	<img src="https://api.travis-ci.org/EFPrefix/EFIconFont.svg?branch=master">
    </a>
    <a href="http://cocoapods.org/pods/EFIconFont">
    	<img src="https://img.shields.io/cocoapods/v/EFIconFont.svg?style=flat">
    </a>
    <a href="http://cocoapods.org/pods/EFIconFont">
    	<img src="https://img.shields.io/cocoapods/p/EFIconFont.svg?style=flat">
    </a>
    <a href="https://github.com/apple/swift">
    	<img src="https://img.shields.io/badge/language-swift-orange.svg">
    </a>
    <a href="https://codebeat.co/projects/github-com-efprefix-eficonfont-master">
        <img src="https://codebeat.co/badges/4cbadc4d-e8f9-4f5b-8ee5-676ba6380383" />
    </a>
    <a href="https://raw.githubusercontent.com/EFPrefix/EFIconFont/master/LICENSE">
    	<img src="https://img.shields.io/cocoapods/l/EFIconFont.svg?style=flat">
    </a>
    <a href="https://twitter.com/EyreFree777">
    	<img src="https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?style=flat">
    </a>
    <a href="http://weibo.com/eyrefree777">
    	<img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat">
    </a>
    <img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

An ordinary iconfont cocoaapods package helps you to use iconfont more easily in your project, in Swift.

> [中文介绍](https://github.com/EFPrefix/EFIconFont/blob/master/README_CN.md)

## Preview

| 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/4.png?raw=true) |

## Example

To run the example project manually, clone the repo, demo is in the 'Example' folder, then open `EFIconFont.xcworkspace` with Xcode and select the target you want, run.

Or you can run the following command in terminal:

```bash
git clone git@github.com:EFPrefix/EFIconFont.git; cd EFIconFont/Example; pod install; open EFIconFont.xcworkspace
```

## Requirements

- iOS 8.0+
- Swift 4.2+

## Installation

EFIconFont is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'EFIconFont'
```

You can get built-in iconfonts with `subspecs`, for example you will get icons of `AntDesign` and `FontAwesome` by the following way:

```ruby
pod 'EFIconFont', :subspecs => ['AntDesign', 'FontAwesome']
```

You can also choose to get all built-in packs by using `Complete` subspec:

```ruby
pod 'EFIconFont', :subspecs => ['Complete']
```

Then, run the following command:

```bash
pod install
```

## Use

### 1. Core

Objects that implement the `EFIconFontProtocol` protocol can transform themselves into `NSAttributedString` or `UIImage`, which is as follows:

```swift
public protocol EFIconFontProtocol {

    // `name` is not necessarily equal to .ttf file name
    var name: String { get }

    // `path` is path of .ttf file
    var path: String { get }

    // `attributes` is style of icon
    var attributes: [NSAttributedString.Key : Any] { set get }

    // `unicode` is unique identifier of particular icon
    var unicode: String { get }
}
```

- name: Font name, not necessarily equal to .ttf file name, you can use [BirdFont](https://birdfont.org) to see the `Name` attribute of the file;
- path: Filepath of `.ttf` file, usually you can get it through code like `Bundle.main.path(forResource: name, ofType: "ttf")`(If filename is same as name, you can use the default implementation and do not need to implement this property);
- attributes: Attributes of icon(You can use the default implementation and do not need to implement this property);
- unicode: The unique unicode of an icon.

Objects that implement the protocol can be converted to strings and images by calling the following methods, you can also change the foreground color and size:

```swift
// MARK:- String
func attributedString(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> NSAttributedString?
func attributedString(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> NSAttributedString?

// MARK:- Image
func image(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> UIImage?
func image(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage?
func image(size imageSize: CGSize, attributes: [NSAttributedString.Key : Any]?) -> UIImage?
func image(size imageSize: CGSize, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage?
```

### 2. Built-in iconfont packs

This pod has integrated some free resources in the subspecs, like `AntDesign` and `FontAwesome`. It can be imported by who need to use it. The usage methods are as follows, you can get a return value of `EFIconFontProtocol`:

```swift
EFIconFontAntDesign.addteam
```

You can use the object which follow `EFIconFontProtocol` to get `NSAttributedString` and `UIImage`:

```swift
EFIconFontAntDesign.addteam.attributedString(size: 24)
EFIconFontFontAwesomeBrands.adobe.attributedString(size: 32, foregroundColor: UIColor.white, backgroundColor: UIColor.green)
EFIconFontFontAwesomeRegular.addressBook.image(size: 24, foregroundColor: UIColor.red)
EFIconFontFontAwesomeSolid.alignLeft.image(size: CGSize(width: 36, height: 48), foregroundColor: UIColor.white)
```

You can also get all icons of a `EFIconFontCaseIterableProtocol` object with type `[String : EFIconFontProtocol]` by the following code:

```swift
EFIconFont.antDesign.dictionary
```

PS: Although the libraries below are all free, please make sure that your way of using the icon conforms to the original author's protocol specification:

| Name | Version | Count | File Size | Description | License | Preview |
|:-|:-|:-|:-|:-|:-|:-|
| AntDesign | | 557 | 127KB | Ant Design | [MIT](https://github.com/ant-design/ant-design/blob/master/LICENSE) | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=9402) |
| ElusiveIcons | 2.0.0 | 304 | 53KB | Elusive Icons | [OFL](http://elusiveicons.com/license/) | [elusiveicons.com](http://elusiveicons.com/icons/) |
| FontAwesome | 5.8.1 | 1516 | 356KB | Font Awesome | [Font Awesome Free License](https://fontawesome.com/license/free) | [fontawesome.com](https://fontawesome.com/icons?d=gallery&m=free) |
| Ionicons | 4.5.5 | 696 | 143KB | Ionicons | [MIT](https://github.com/ionic-team/ionicons/blob/master/LICENSE) | [ionicons.com](https://ionicons.com/) |
| Octicons | 8.4.2 | 184 | 34KB | GitHub's icons | [GitHub Logos and Usage](https://github.com/logos) | [octicons.github.com](https://octicons.github.com/) |

### 3. Extend custom packs

#### (1) Import Font File

Drag the `.ttf` file of the icon library into the Xcode project and ensure that the `Copy Bundle Resources` list in `Build Phases` contains this font file (It will be included by default, just check it).

In addition, the file will be loaded at runtime, do not need to add it to the `Fonts provided by application` item in the `Info.plist` file.

#### (2) Implement `EFIconFontCaseIterableProtocol` 

By making a implementation of [EFIconFontCaseIterableProtocol](https://github.com/EFPrefix/EFIconFont/blob/master/EFIconFont/Classes/Core/EFIconFontCaseIterableProtocol.swift) you can get your custom iconfont pack object, demo in this project demonstrates customization with GitHub's Octicons as an [example](https://github.com/EFPrefix/EFIconFont/blob/master/Example/EFIconFont/EFIconFontOcticons.swift):

```swift
import EFIconFont

public extension EFIconFont {
    public static let octicons = EFIconFontOcticons.self
}

extension EFIconFontOcticons: EFIconFontCaseIterableProtocol {
    public static var name: String {
        return "octicons"
    }
    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontOcticons: String {
    case thumbsup = "\u{e6d7}"
    case unverified = "\u{e6d6}"
    case unfold = "\u{e6d5}"
    case verified = "\u{e6d4}"
    // ...
}
```

#### (3) Call

Same as `Built-in iconfont packs` above:

```swift
EFIconFontOcticons.thumbsup
```

#### (4) Attention

The `Octicons` icon library in this project is owned by GitHub. This is only a demonstration, do not use it in any situation that violates the specifications set by its owner:

| Name | Version | Count | File Size | Description | License | Preview |
|:-|:-|:-|:-|:-|:-|:-|
| Octicons | 8.4.2 | 184 | 34KB | GitHub‘s icons | [GitHub Logos and Usage](https://github.com/logos) | [octicons.github.com](https://octicons.github.com/) |

### 4. Other

Usage of some iconfont resource sites:

- [iconfont.cn](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)
- [fontawesome.com](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/fontawesome.md)

## Author

EyreFree, eyrefree@eyrefree.org

## License

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png">

EFIconFont is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
