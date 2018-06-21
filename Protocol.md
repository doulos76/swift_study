# Protocol

## Protocol이란?

__Protocol__은 __특정 역할을 하기 위한 Method, Property, 기타 요구사항 등의 청사진__을 정의함.

Structure, Class, Enum은 Protocol을 채택(Adopted)해서 특정 기능을 실행하기 위한 Protocol의 요구사항을 실제로 구현할 수 있음. 어떤 프로토콜의 요구사항을 모두 따르는 타입은 '해당 프로토콜을 준수한다(Confrom)고 표현함. 타입에서 프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 청사진의 기능을 모두 구현해야 함. 즉 __프로토콜은 정의를 하고 제시를 할 뿐이지 스스로 기능을 구현하지는 않음.__

## Protocol 정의

```swift
protocol protocol_name {
	protocol_definition
}
```

타입의 프로토콜 채택
```swift
struct SomeStruct: AProtocol, AnotherProtocol {
	// 구조체 정의	
}

class SomeClass: AProtocol, AnotherProtocol {
	// 클래스 정의
}

enum SomeEnum: AProtocol, AnotherProtocol {
	// 열거형 정의
}
```


SuperClass를 상속받는 클래스의 프로토콜 채택

```swift
class SomeClass: SuperClass, AProtocol, AnotherProtocol {
	// 클래스 정의
}
```

## Protocol 요구사항

### Property 요구

```swift
protocol SomeProtocol {
	var settableProperty: String { get set }
	var notNeedToBeSettableProprety: String { get }
}

protocol AnotherProtocol {
	static var someTypeProperty: Int { get set }
	static var anotherTypeProperty: Int { get set }
```

```swift
protocol Sendable {
  var from: String { get }
  var to: String { get }
}

class Message: Sendable {
  var sender: String
  var from: String {
    return self.sender
  }
  
  var to: String
  
  init(sender: String, receiver: String) {
    self.sender = sender
    self.to = receiver
  }
}


class Mail: Sendable {
  var from: String
  var to: String
  
  init(sender: String, receiver: String) {
    self.from = sender
    self.to = receiver
  }
}

```
