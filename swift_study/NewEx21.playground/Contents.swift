import UIKit

//형변환 type casting
//정수 -> 실수 실수 -> 정수

let myInt : Int = 10
let myFloat : Float = 3.14
let myString : String = "123ㅗㅓㅗㅓㅗ"

//Int -> Double
let myDouble : Double = Double(myInt)
//Float -> Int
let myInt2: Int = Int(myFloat)

//Int -> String
let myString2 : String = String(myInt)
//String -> Int 스트링 에서 인트로 형변환 할 떄는 옵셔널 변수로 선언해야함
let myInt3 : Int? = Int(myString)

//안전하게 사용하기 위해서, 옵셔널 바인딩 if let
if let newInt = Int(myString) {
    //형변환 성공 : newInt가 nil이 아님
    print(newInt)
}else {
    //newInt가 nil임
    print("형변환이 실패함")
}

//클래스의 형변환 (다형성)
//다형성 : 상속관계에서 특정한 클래스만 빼오는 것
class Person {
    var name: String = ""
    func breath() {
        print("숨쉬기")
    }
}
class Student : Person {
    var school : String = ""
    func gotoSchool(){
        print("학교가기")
    }
}
class UnivStudent: Student {
    var major: String = ""
    func gotoMT(){
        print("MT가기")
    }
}
var grandFafa : Person = Person()
var fafa : Student = Student()
var son : UnivStudent = UnivStudent()

//is연산자 : 상속관계의 클래스 객체의 속성을 검사해 볼 수 있다.(유전자 검사)
grandFafa is Person
grandFafa is Student
grandFafa is UnivStudent

fafa is Person
fafa is Student
fafa is UnivStudent

son is Person
son is Student
son is UnivStudent

//as연산자 : 클래스 형변환 연산자
//as? 연산자 : nil일 수도 있기에
var optionalCasted : Student?
optionalCasted = grandFafa as? UnivStudent
optionalCasted = fafa as? UnivStudent
optionalCasted = son as? UnivStudent

//?? 연산자 : nil이면 디폴트(기본값)으로 주는 연산자
optionalCasted = grandFafa as? UnivStudent ?? UnivStudent()

//as! 연산자 : nil임을 각오하고 강제로 형변환을 해달라
var forcedCasted : Student?
//forcedCasted = grandFafa as! UnivStudent
forcedCasted = son as! UnivStudent
