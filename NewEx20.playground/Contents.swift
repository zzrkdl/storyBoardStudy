import UIKit

//프로토콜( Protocol )
//가상함수 : 함수의 선언만 있고 본체(코드)는 없는 함수 자바의 인터페이스와 비슷
//특징 : 다중 상속이 가능함( 여러 프로토콜을 한번에 상속(확장) 할 수 있음)

protocol Talkable {
    var lang: String { get }    //읽기 속성만 존재
    var topic : String {get set}    //읽기 쓰기 속성이 존재
    func talk() //가상함수, 선언만 있고 본체는 없음
}

protocol Runnable {
    func run() // 가상함수
}

struct Person : Talkable, Runnable {
    var lang: String //프로퍼티 준수
    var topic: String //프로퍼티 준수
    func talk() {
        print("말할 수 있음")
    }
    func run() {
        print("달릴 수 있음")
    }
}

var p: Person = Person(lang: "영어", topic: "교육주제")
p.talk()
p.run()

//클래스의 오버로딩 : 함수의 매개변수를 다르게 함으로 같은 이름의 함수를 확장
//클래스의 오버라이딩 : 자식클래스가 부모클래스의 메소드를 받아 재정의 해서 쓰는것
class ParentClass {
    func printMyName(name: String) {
        print("parent: " , name)
    }
    func printMyName(name: String, age:Int) {
        print("name: ", name)
        print("age : ", age)
    }
}
var pClass : ParentClass = ParentClass()
pClass.printMyName(name: "아버지")
pClass.printMyName(name: "아버지", age: 40)
class ChildClass : ParentClass {
    //오버라이딩 : 재정의
    override func printMyName(name: String) {
        print("child : " ,name)
    }
}
var cClass : ChildClass = ChildClass()
cClass.printMyName(name: "아들")


