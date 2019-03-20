# EFIconFont

[![CI Status](https://img.shields.io/travis/EyreFree/EFIconFont.svg?style=flat)](https://travis-ci.org/EyreFree/EFIconFont)
[![Version](https://img.shields.io/cocoapods/v/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)
[![License](https://img.shields.io/cocoapods/l/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)
[![Platform](https://img.shields.io/cocoapods/p/EFIconFont.svg?style=flat)](https://cocoapods.org/pods/EFIconFont)

## Preview

| 1  | 2 | 3 |
|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) |

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 8.0+

## Installation

EFIconFont is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EFIconFont'
```

## Custom

Use the following `JavaScript` code in Chrome console, you can generate your own `enum` in your project page of `iconfont.cn`:

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

## Author

EyreFree, eyrefree@eyrefree.org

## License

EFIconFont is available under the MIT license. See the LICENSE file for more info.
