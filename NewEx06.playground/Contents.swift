import UIKit

//스위프트 언어의 중요한 특징
//옵셔널 Optional - 널 체크, Null Exception 발생빈도를 줄여보자.

//자바에서 널 체크
// if(myObje == null) {
//  return;
//}

var myNum1 : Int = 10 //실제값 10으로 초기화 했기 때문에 nil 아님.
var myNullable:Int? = nil //명시적으로 널일 수도 있음을 선언해야 됨.
// nil을 사용하려면 명시해주어야 함  ?로
print(myNum1)
print(myNullable)

//옵셔널 변수를 안전하게 사용하는 방법 : Null Exception을 피하는 방법
//1. 옵셔널 바인딩 - if let 구문
//2. 가드 문자 - guard let, guard else 구문

myNullable = 20
//옵셔널 바인딩 Option Binding
if let newInt = myNullable {
    //널이 아님
    print("널이 아님")
    print(newInt)
}else{
    //널임
    print("널임")
}

//강제 언래핑 forced unwrapping
//널(닐)임을 감수하고(널이 아님을 확신하고) 값을 빼오는 것을 의미
// ! 연산자 : 실제 값을 뺴오는 연산자
print(myNullable!)

//연습문제
//옵셔널 문자열 변수 myStr을 선언하고, "Hello"를 초기값으로 할당하고
//옵셔널 바인딩(if let)을 활용하여, myStr의 값을 출력핫오.

var myStr : String? = "Hello"

if let newStr = myStr {
    print("nil이 아닙니다. \(newStr)")
}else {
    print("nil입니다.")
}
