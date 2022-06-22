import UIKit

//출력문 print, debugPrint, dump
var myStr: String = "Swift Programming"

print(myStr)
debugPrint(myStr)
dump(myStr)

class Student {
    var name = "홍길동"
}
//클래스의 객체 선언
var student = Student()
print(student)
print(student.name)
debugPrint(student)
dump(student)

//문자열 보간 : 문자열 연결하기
var age = 30
//print("저의 나이는 :"+age) // 자바 + 연결연산자는 사용하지 못함
print("저의 나이는 \(age)입니다.")
print("저의 나이는",age,"입니다.")

