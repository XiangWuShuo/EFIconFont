# material-design-icons

## 1. 获取数据

找到 `iconfont` 目录下的 `codepoints.txt` 和 `MaterialIcons-Regular.ttf`。

## 2. 生成代码

```javascript
function camelCase(text, separator) {
    var arr = text.split(separator);
    for(var i = 1; i < arr.length; i++) {
        var s = arr[i].slice(0, 1).toUpperCase(); 
        var h = arr[i].slice(1);
        arr[i] = s + h;
    }
    return arr.join('');
};

var string = document.getElementsByTagName('pre')[0].innerText;
var lines = string.split('\n');
var result = "";
for (var line in lines) {
    var values = lines[line].split(' ');
    var name = values[0];
    name = camelCase(name, ' ');
    name = camelCase(name, '-');
    name = camelCase(name, '_');
    var code = values[1];
    result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n";
}
console.log(result);
```

## 3. 最后

本教程思路仅供学习交流，大家在使用的同时务必注意版权问题，未标明免费商业使用的还请联系对应创作者，否则由此引发的后果将由您自己承担。
