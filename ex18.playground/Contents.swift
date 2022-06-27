import UIKit

//구조체와 클래스

//          구조체(struct)   열거형(enum)   클래스(class)
//형식       값타입           값타입         참조타입
//상속       불가             불가          가능
//익스텐션    가능             가능          가능

//* 스위프트에서 구조체를 가장 선호

//구조체
struct Student {
    var name:String = "홍길동"
    var age:Int = 30
    func printMyName()  {
        print(self.name)
    }
}

//구조체의 객체 할당(인스턴스 생성) : 메모리에 할당
var structStudent : Student = Student();  //new 키워드 필요없음.
dump( structStudent )
//멤버변수와 변수에 접근
structStudent.name
structStudent.age
structStudent.printMyName()
//구조체의 값 복사 = 대입문만 있으면 됨.
let structStudent2 = structStudent // 새로운 구조체에 값 복사가 이루어 짐.
dump(structStudent2)

//클래스
class Person {
    var name: String = "홍길동"
    var age:Int = 30
    func printMyName() {
        print(self.name)
    }
}

//클래스의 객체 생성 (인스턴스)
var classPerson : Person = Person() //new 키워드가 없음
dump(classPerson)

classPerson.name
classPerson.age
classPerson.printMyName()

//클래스의 생성자 함수
//init() : 생성자 - 구조체에도 생성자함수가 있음
//deinit() : 소멸자 - 구조체에는 없음

class SchoolMan {
    var name: String
    var age : Int
    var nickName : String?
    
    init(name:String, age:Int) { //생성자 - 생성시에 자동으로 호출
        self.name = name
        self.age = age
    }
    deinit { //소멸자 - 소멸시 자동호출
        self.name = ""
        self.age = 0
    }
}
//객체 생성
var schoolMam : SchoolMan = SchoolMan(name: "스쿨맨", age: 20)
schoolMam.name
schoolMam.age
schoolMam.nickName = "닉네임"
if let nickName = schoolMam.nickName {
    print(nickName)
}

//클래스의 상속 : 부모클래스의 자산(변수, 함수)를 자식클래스가 상속하는 것
class Parent {
    var name : String = "부모"
    var age : Int = 40
    func printMyName() {
        print(self.name)
    }
}
class Child : Parent {
    
}
var child = Child ()
child.age
child.name
child.printMyName()

//클래스의 Property - get, set 함수
class People {
    var name : String = "홍길동"
    var korAge = 30
    var engAge : Int {
        get {           //변수를 읽을 떄 자동호출
            return korAge - 1
        }
        set(inputValue) { //값을 대입(=) 할 때 자동호출
            korAge = inputValue + 1
        }
    }
}

var people = People()
people.korAge
print(people.engAge)  //get함수가 자동호출
people.engAge = 40  //set함수가 자동호출
people.korAge

//get, set함수의 감시자 함수
struct Hero {
    var name: String = "아이언맨"
    var age : Int = 30 {
        //감시자함수
        willSet(newAge) { //값 설정 전에 호출
            print("이전 나이", age)
            print("새 나이", newAge)
        }
        didSet(oldAge) { //값 설정 후에 호출
            print("이전 나이", oldAge)
            print("새 나이", age)
        }
    }
}
var hero = Hero()
hero.age = 40
