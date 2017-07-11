# ios-eureka-demo
iOS Eureka のサンプルです

## 1. PodFile

```
pod 'Eureka'
```

## 2. 適当な箇所に実装する

### 1. インポート

```
import Eureka

```

### 2. 継承

```
class ViewController: FormViewController {
}
```

### 3. セクションの作成

()内にはセクション名を設定できる
```
form +++ Section("Section1")
```

### 4. セルの作成

()内にはセル名を設定できる
```
<<< TextRow("text"){ row in
                row.title = "Text Row"
                row.placeholder = "Enter Text" 
            }
```

主要なセルの種類<br>

|セル名|説明|
|---|---|
|TextRow | テキストフィールドのセル |
|DateRow | DatePickerで選択するセル |
|LabelRow | ラベルが表示されるセル |
|SwitchRow | スイッチで選択できるセル |

主要なプロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| title | セルのタイトル | `row.title = "Text Row"` |
| value | セルの値 | `print(row.value!)` |

セル内のフィールドが変更された際に値を取得するときは、以下のように`.onChange{}`を使う。

```
<<< TextRow("text"){ row in
                row.title = "Text Row"
                row.placeholder = "Enter Text" 
            }.onChange {row in
                print(row.value!)
            }
```

