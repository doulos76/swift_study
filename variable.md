# variables, Constants, and types

## Variables and types

* A __Variable__  is a temporary container for a specific type of value.

```swift
var count: Int
var shouldReminad: Bool
var text: String
var list: [ChecklistItem]
```

* __Data type__, or just __type__, of a variable determines what kind of values it can contain. Some variables hold simple values such as `Int` or `Bool`, others hold more complex objects such as `String` or `Array`.

* `Double` : Similar to a `Float` but with more precision.
* `Character`: Holds a single character. A `String` is a collection of `Character`s.
* `UInt`: A variation of `Int` that you may encounter occasionally. The U stands for "unsigned", meaning the data type can hold positive values only. It's called unsigned because it cannot have a nagative sign (-) in front of the number. `UInt` can store numbers between 0 and 18 quintillion, but no negative numbers.

* `Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64, UInt64`.: These are all variations on `Int`. The difference is in how many bytes they have available to store their values. The more bytes, the bigger the values they can store. 

* `CGFloat`.: This isn't really a Swfit type but a type defined by the iOS SDK. It's a decimal point number like `Float` and `Double`. For historical reasons, this is used throughout UIKit for floating-point values.( The "CG" prefix stands for the __C__ore __G__raphics framework.)

Swift won't automatically convert between differnet number types. You always need to convert the values explicitly.

```swift
var i = 10
var f: Float
f = i				// error
f = Float(i) 		// OK
```


You don't always need to specify the type when you creat a new variable. If you give the variable an initial value, Swift uses __type inference__ to determine the type:

```swift
var i = 10				// Int
var d = 3.14				// Double
var b = true				// Bool
var s = "Hello, world"	// String
```

`"Hello, World"` are named __literal constants__ or just __literals__.

### Type annotation

```swift
var f: Flaot = 3.14
var i: Double = 10
var i = 10.0
```

### Instantiate

```swift
var item: ChecklistItem

item = ChecklistItem()

-----------------

var item = ChecklistItem()

------------------

var item = CHecklistItem(text: "Charge my iPhone", checked: false)
```

























