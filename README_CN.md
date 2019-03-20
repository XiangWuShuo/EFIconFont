# EFIconFont

[![CI Status](https://img.shields.io/travis/EyreFree/EFIconFont.svg?style=flat)](https://travis-ci.org/EyreFree/EFIconFont)
[![Version](https://img.shields.io/cocoapods/v/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)
[![License](https://img.shields.io/cocoapods/l/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)
[![Platform](https://img.shields.io/cocoapods/p/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)

一个普通的 icon font 封装，帮助你更便捷地在你的工程中使用 icon font。

> [English Introduction](https://github.com/EFPrefix/EFIconFont/blob/master/README.md)

## 预览

| 1  | 2 | 3 |
|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) |

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

EFIconFont 可以通过 [CocoaPods](http://cocoapods.org) 进行获取。只需要在你的 Podfile 中添加如下代码就能实现引入：

```ruby
pod 'EFIconFont'
```

然后，执行如下命令即可：

```bash
pod install
```

## 扩展

在你 `iconfont.cn` 的某个工程页面，打开 Chrome 开发者工具的 Console，在其中执行如下 `JavaScript` 脚本，即可获取对应的枚举结构，如下所示：

```javascript
function camelCase(text, separator) {
	var arr = text.split(separator);
	for(var i = 1; i < arr.length; i++) {
		var s = arr[i].slice(0, 1).toUpperCase(); 
		var h = arr[i].slice(1);
		arr[i] = s + h;
	}
	return arr.join('')
}

var items = document.getElementsByClassName('icon-item')
var result = ""
for(let i = 0, len = items.length; i < len; i++) {
	let item = items[i]
	var name = item.getElementsByClassName('icon-name')[0].innerHTML
	name = camelCase(name, ' ')
	name = camelCase(name, '-')
	var code = item.getElementsByClassName('icon-code')[0].innerHTML
	code = code.replace('&amp;#x', '')
	code = code.replace(';', '')
	result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n"
}
console.log(result)
```

![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/Custom.png?raw=true)

## 作者

EyreFree, eyrefree@eyrefree.org

## 协议

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png">

EFIconFont 基于 MIT 协议进行分发和使用，更多信息参见 [协议文件](LICENSE)。
