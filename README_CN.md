![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true)

<p align="center">
    <a href="https://travis-ci.org/EFPrefix/EFIconFont">
    	<img src="https://api.travis-ci.org/EFPrefix/EFIconFont.svg?branch=master">
    </a>
    <a href="https://cocoapods.org/pods/EFIconFont">
    	<img src="https://img.shields.io/cocoapods/v/EFIconFont.svg?style=flat">
    </a>
    <a href="https://cocoapods.org/pods/EFIconFont">
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
    <a href="https://weibo.com/eyrefree777">
    	<img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat">
    </a>
    <img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
    <a href="http://shang.qq.com/wpa/qunwpa?idkey=d0f732585dcb0c6f2eb26bc9e0327f6305d18260eeba89ed26a201b520c572c0">
        <img src="https://img.shields.io/badge/Q群-769966374-32befc.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAQCAMAAAARSr4IAAAA4VBMVEUAAAAAAAAAAAD3rwgAAAAAAADpICBuTQNUDAwAAAAAAAAAAAAAAADnICAAAAAAAACbFRUAAAD5rgkfFgEAAADHGxu1GBhGOyQ6LhMPCgAAAAB0UQRbDAziHh7hHh5HRUEAAAAPAgIQCwEQEBAdBAQgICAvIQIvLy8+LAJAQEBJCgpWRBpbW1tfX19gYGBqZVptTARvb299VwSAgICEhISHh4ePhnGbbAWgoKCseAawsLC7gwbAwMDExMTFrKzLjgfoHx/powfqpAjvZGTw8PDxcnLxenrzj4/5rgj5x8f///9y6ONcAAAAIHRSTlMAECAgMEBQVlhggZGhobHBwdHR3eHh4+fp7/Hx9/f5+3tefS0AAACkSURBVHjaNc1FAsJAEAXRDj64BAv2IbgEd2s0gfsfiJkAtXurIpkWMQBd0K8O3KZfhWEeW9YB8LnUYY2Gi6WJqJIHwKo7GAMpRT/aV0d2BhRD/Xp7tt9OGs2yYoy5mpUxc0BOc/yvkiQSwJPZtu3XCdAoDtjMb5k8C9KN1utx+zFChsD97bYzRII0Ss2/7IUliILFjZKV8ZLM61xK+V6tsHbSRB+BYB6Vhuib7wAAAABJRU5ErkJggg==">
    </a>
</p>

一个用 Swift 实现的普通的 IconFont 封装，帮助你更便捷地在你的工程中使用 IconFont，同时集成了一系列可免费使用的第三方图标库。

> [English Introduction](https://github.com/EFPrefix/EFIconFont/blob/master/README.md)

## 预览

| 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/4.png?raw=true) |

## 示例

1. 利用 `git clone` 命令下载本仓库；
2. 利用 cd 命令切换到 Example 目录下，执行 `pod install` 命令；
3. 随后打开 `EFIconFont.xcworkspace` 编译即可。

或执行以下命令：

```bash
git clone git@github.com:EFPrefix/EFIconFont.git; cd EFIconFont/Example; pod install; open EFIconFont.xcworkspace
```

## 需求

- iOS 8.0+
- Swift 4.2+

## 安装

EFIconFont 可以通过 [CocoaPods](https://cocoapods.org) 进行获取。只需要在你的 Podfile 中添加如下代码就能实现引入，默认只包含 `Core` 部分，不含字体包：

```ruby
pod 'EFIconFont'
```

可以通过 subspecs 方式引入本库已集成的图标库资源，如下示例引用了 AntDesign 和 FontAwesome 资源：

```ruby
pod 'EFIconFont', :subspecs => ['AntDesign', 'FontAwesome']
```

也可以通过 `Complete` 引入本库已集成的所有图标库资源，示例：

```ruby
pod 'EFIconFont', :subspecs => ['Complete']
```

然后，执行如下命令即可：

```bash
pod install
```

## 使用

### 1. 核心

实现 `EFIconFontProtocol` 协议的对象，能够将自身转换为 `NSAttributedString` 或 `UIImage`，该协议内容如下：

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

- name：字体名，与 .ttf 文件名并不一定相等，可通过 [BirdFont](https://birdfont.org) 等字体文件处理工具查看其 `Name` 属性取得；
- path：.ttf 文件路径，一般通过形如 `Bundle.main.path(forResource: name, ofType: "ttf")` 的方式获取（若文件名和 name 相同，则无须实现该属性，使用默认实现即可）；
- attributes: 某 icon 的样式（若无特殊需求，使用默认实现即可）；
- unicode：某符号的 unicode。

实现该协议的对象，可通过调用下列方法进行转换输出为字符串和图片，可改变前景色和大小：

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

### 2. 自带图标库

本库已集成了 AntDesign、FontAwesome 等免费图标库资源，需要使用的同学引入即可，如下所示，会得到一个 `EFIconFontProtocol` 类型的返回值：

```swift
EFIconFontAntDesign.addteam
```

可通过遵循 `EFIconFontProtocol` 协议的对象获取 `NSAttributedString` 和 `UIImage`：

```swift
EFIconFontAntDesign.addteam.attributedString(size: 24)
EFIconFontFontAwesomeBrands.adobe.attributedString(size: 32, foregroundColor: UIColor.white, backgroundColor: UIColor.green)
EFIconFontFontAwesomeRegular.addressBook.image(size: 24, foregroundColor: UIColor.red)
EFIconFontFontAwesomeSolid.alignLeft.image(size: CGSize(width: 36, height: 48), foregroundColor: UIColor.white)
```

可通过如下方式获取某个图标库的全部项目，他会返回 `[String : EFIconFontProtocol]` 类型的 Dictionary：

```swift
EFIconFont.antDesign.dictionary
```

备注：虽为免费图标库，但还请自行确保您的使用方式遵循字库原始作者的使用协议规范：

| 名称 | 版本 | 数量 | 文件大小 | 描述 | 使用规范 | 预览 |
|:-|:-|:-|:-|:-|:-|:-|
| AntDesign | | 557 | 127KB | AntDesign 所属图标库 | [MIT](https://github.com/ant-design/ant-design/blob/master/LICENSE) | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=9402) |
| ElusiveIcons | 2.0.0 | 304 | 53KB | Elusive Icons | [OFL](http://elusiveicons.com/license/) | [elusiveicons.com](http://elusiveicons.com/icons/) |
| FontAwesome | 5.8.1 | 1516 | 356KB | FontAwesome 所属的免费图标库 | [Font Awesome Free License](https://fontawesome.com/license/free) | [fontawesome.com](https://fontawesome.com/icons?d=gallery&m=free) |
| Ionicons | 4.5.5 | 696 | 143KB | Ionicons 免费图标库 | [MIT](https://github.com/ionic-team/ionicons/blob/master/LICENSE) | [ionicons.com](https://ionicons.com/) |
| MaterialIcons | 3.0.1 | 932 | 128KB | Google 的 Material 图标库 | [Apache-2.0](https://github.com/google/material-design-icons/blob/master/LICENSE) | [material.io](https://material.io/tools/icons) |
| Meteocons |  | 47 | 15KB | 一个天气图标库 | [Free](https://www.alessioatzeni.com/meteocons/) | [alessioatzeni.com/meteocons](https://www.alessioatzeni.com/meteocons/) |
| MetrizeIcons | 1.0 | 300 | 74KB | 300 个给设计和开发人员的免费图标 | [Free](https://www.alessioatzeni.com/metrize-icons/) | [alessioatzeni.com/metrize-icons](https://www.alessioatzeni.com/metrize-icons/) |
| OpenIconic | 1.1.1 | 223 | 33KB | 223 个开源矢量图标集 | [OFL](https://github.com/iconic/open-iconic/blob/master/FONT-LICENSE) | [useiconic.com/open](https://useiconic.com/open/) |
| Typicons | 2.0.9 | 336 | 82KB | 336 个矢量图标集合在一个库内 | [OFL](https://github.com/stephenhutchings/typicons.font/blob/master/README.md) | [s-ings.com/typicons](https://www.s-ings.com/typicons/) |

### 3. 自定义图标库

#### (1) 字体文件引入

将我们通过各种方式获取的图标库的 `.ttf` 文件拖入 Xcode 工程中，并确保 `Build Phases` 中的 `Copy Bundle Resources` 列表中包含这个字体文件（默认拖入工程就会被包含在内）。

另外，此文件会在运行时按需加载，无需添加到 `Info.plist` 文件中的 `Fonts provided by application` 项内。

#### (2) 实现 `EFIconFontCaseIterableProtocol` 

可通过实现 [EFIconFontCaseIterableProtocol](https://github.com/EFPrefix/EFIconFont/blob/master/EFIconFont/Classes/Core/EFIconFontCaseIterableProtocol.swift) 协议实现图标库的封装，本项目中 Example 以 GitHub 所有的 Octicons 为例 [演示](https://github.com/EFPrefix/EFIconFont/blob/master/Example/EFIconFont/EFIconFontOcticons.swift) 了自定义方式：

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

有人要问这个巨长无比的枚举是怎么手打出来的？当然是代码生成的了...先把 `.svg` 图片上传到 `iconfont.cn`，然后看 [这里](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)。

#### (3) 调用

同上自带图标库的使用。

```swift
EFIconFontOcticons.thumbsup
```

#### (4) 注意事项

本项目 Example 中的 Octicons 图标库为 GitHub 所有，此处仅为演示，请勿用于任何违反其所有者所定规范的场合：

| 名称 | 版本 | 数量 | 文件大小 | 描述 | 使用规范 | 预览 |
|:-|:-|:-|:-|:-|:-|:-|
| Octicons | 8.4.2 | 184 | 34KB | GitHub 所属图标库 | [GitHub Logos and Usage](https://github.com/logos) | [octicons.github.com](https://octicons.github.com/) |

### 4. 其它

一些 IconFont 资源站点素材的爬取以及代码生成方式：

- [iconfont.cn](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)
- [fontawesome.com](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/fontawesome.md)

## 作者

EyreFree, eyrefree@eyrefree.org

## 协议

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png">

EFIconFont 基于 MIT 协议进行分发和使用，更多信息参见 [协议文件](LICENSE)。
