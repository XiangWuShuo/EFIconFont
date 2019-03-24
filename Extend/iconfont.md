# iconfont 资源利用

阿里 [iconfont.cn](https://www.iconfont.cn/) 上有众多 IconFont 资源，我们可以通过如下步骤将我们需要的素材批量获取。

## 1. 批量加入购物车

目前 iconfont.cn 上有非常多的图标库，能满足各行、各业、开发、设计的需求，但图标库目前没有提供批量添加购物车的功能，正常操作的话，我们只能手动一个一个加购物车...😂

我们可以打开某个图标库的页面，然后打开 Chrome 浏览器的开发者工具，在 Consol 执行如下代码，即可将该图标库所有图标加入购物车：

```javascript
var icon=document.getElementsByClassName('icon-gouwuche1');for(var i=0;i<icon.length;i++){icon[i].click();}
```

## 2. 建立个人项目

打开购物车，点击“添加到项目”按钮可以将购车中图标全部加入某个个人项目中（当前没有项目的话点击右侧“加号”可以创建新项目），为接下来的代码生成和字体文件获取做准备。

这一步中项目设置里的 `Font Family` 一项即为之后生成的 .ttf 文件的字体 Name，注意不要与项目中其他字体名重复，以免造成一些不必要的使用问题。这里推荐全英文小写命名，且将之后下载得到的 .ttf 文件也重命名为与此处设置的 `Font Family` 一样，便于管理（项目中存在文件名相同的 .ttf 文件会冲突，所以重命名是必要的）。

## 3. Swift 代码生成

在你 `iconfont.cn` 的某个项目页面，打开 Chrome 开发者工具的 Console，在其中执行如下 `JavaScript` 脚本，即可获取对应的枚举结构，如下所示：

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

![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/iconfont.png?raw=true)

## 4. 字体文件获取

在你 `iconfont.cn` 的某个项目页面，点击“下载至本地”，即可获取字体文件压缩包，解压后我们取其中的 `iconfont.ttf` 即可。

## 5. 获取字体名

这里我们需要用工具查看这个 .ttf 文件对应的字体名称，这里我使用的是 [BirdFont](https://birdfont.org)，详情可参考 [iOS 在 App 中使用自定义字体](https://juejin.im/post/5a3214f36fb9a0451238f744)。

字体文件对应的字体名如下：

```
iconfont.ttf: {之前建立项目时设置的 `Font Family` 内容}
```

![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/extend.png?raw=true)

## 5. 注意

1. iconfont.cn 的上传有文件大小限制，一次上传数量、大小过多触发限制可以尝试分几次上传；
2. 其它相似 iconfont 资源站点的资源可以取其中的 .svg 包，用上述步骤生成 .ttf 文件和调用代码。

## 6. 最后

本教程思路仅供学习交流，iconfont.cn 上并非所有字体都能够免费商业使用，大家在使用的同时务必注意版权问题，未标明免费商业使用的还请联系对应创作者，否则由此引发的后果将由您自己承担。
