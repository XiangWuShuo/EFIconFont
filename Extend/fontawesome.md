# FontAwesome 资源利用

[FontAwesome](https://fontawesome.com) 上也有众多 IconFont 资源，我们可以通过如下步骤将我们需要的素材批量获取。

## 1. 查找免费图标

打开 [Free](https://fontawesome.com/icons?d=gallery&m=free) 分类页面，可以列举出当前 FontAwesome 所有的免费图标。

## 2. 获取字体文件

打开 [Download](https://fontawesome.com/how-to-use/on-the-web/setup/hosting-font-awesome-yourself) 页面，点击 “Font Awesome Free for the Web” 按钮，即可获取字体资源压缩包，解压后我们拿到 webfonts 目录下的三个字体文件 `fa-brands-400.ttf`、`fa-regular-400.ttf` 和 `fa-solid-900.ttf` 即可。

## 3. 获取字体名

同时这里我们需要用工具查看这三个 .ttf 文件对应的字体名称，这里我使用的是 [BirdFont](https://birdfont.org)，详情可参考 [iOS 在 App 中使用自定义字体](https://juejin.im/post/5a3214f36fb9a0451238f744)。

三个字体文件对应的字体名如下：

```
fa-brands-400.ttf: Font Awesome 5 Brands
fa-regular-400.ttf: Font Awesome 5 Brands
fa-solid-900.ttf: Font Awesome 5 Brands
```

![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/extend.png?raw=true)

## 4. Swift 代码生成

用 Chrome 打开 metadata 目录下的 icons.json 文件，打开 Chrome 开发者工具的 Console，在其中执行如下 `JavaScript` 脚本，即可获取三个 .ttf 文件对应的枚举结构，如下所示：

### fa-brands-400.ttf

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

var json = document.getElementsByTagName('pre')[0].innerText;
var objs = JSON.parse(json);
var result = ""
for (var key in objs) {
    if (objs.hasOwnProperty(key)) {
        let item = objs[key]
        if (item.styles.includes("brands", 0)) {
            var name = key
            name = camelCase(name, ' ')
            name = camelCase(name, '-')
            var code = item.unicode
            result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n"
        }
    }
}
console.log(result)
```

### fa-regular-400.ttf

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

var json = document.getElementsByTagName('pre')[0].innerText;
var objs = JSON.parse(json);
var result = ""
for (var key in objs) {
    if (objs.hasOwnProperty(key)) {
        let item = objs[key]
        if (item.styles.includes("regular", 0)) {
            var name = key
            name = camelCase(name, ' ')
            name = camelCase(name, '-')
            var code = item.unicode
            result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n"
        }
    }
}
console.log(result)
```

### fa-solid-900.ttf

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

var json = document.getElementsByTagName('pre')[0].innerText;
var objs = JSON.parse(json);
var result = ""
for (var key in objs) {
    if (objs.hasOwnProperty(key)) {
        let item = objs[key]
        if (item.styles.includes("solid", 0)) {
            var name = key
            name = camelCase(name, ' ')
            name = camelCase(name, '-')
            var code = item.unicode
            result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n"
        }
    }
}
console.log(result)
```

![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/fontawesome.png?raw=true)

## 5. 最后

本教程思路仅供学习交流，FontAwesome 上并非所有字体都能够免费商业使用，大家在使用的同时务必注意版权问题，未标明免费商业使用的还请联系对应创作者，否则由此引发的后果将由您自己承担。
