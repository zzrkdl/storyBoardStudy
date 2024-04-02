import UIKit

//출력문 3가지 print, debugPrint, dump
var myStr : String = "Swift Programming"

print(myStr)
debugPrint(myStr)
dump(myStr)

class Student {
    var name : String = "홍길동"
    
}
//클래스의 객체 선언
var student = Student()
print(student)
print(student.name)
debugPrint(student.name)
dump(student)   //자세한 값을 보기위해

//문자열 보간 : 문자열 연결하기
var age = 30
print("저의 나이는\(age)입니다!")
//print("저의 나의는\(age)")
print("저의 나이는", age , "입니다.")
