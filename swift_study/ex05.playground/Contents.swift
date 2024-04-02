import UIKit

//스위프트의 객체 타입
//Any, AnyObject, nil

//Any 타입 : 모든 데이타 타입을 담을 수 있음. 자바 최상위 오브젝트 Object
//          기본 데이타 타입 Int, UInt, Float, Double, Bool, String
//          Class, Struct, Enum, Array
var myAny: Any = 100; //정수데이타
myAny = "문자열"
myAny = true

//AnyObject 타입 : 모든 클래스 타입을 담을 수 있음.
class MyClass1 {
    var name = "홍길동"
}
class MyClass2 {
    var age = 30
}
var myAnyObject: AnyObject = MyClass1()
myAnyObject = MyClass2()

//nil 타입 : 널 비어있음 NULL null 비어있는 객체변수(참조변수)
//var myNil = nil
var myNil: Int? = nil

//nil(null) : 수많은 참조 에러가 생김!
//null 체크를 편하게 해보자!
