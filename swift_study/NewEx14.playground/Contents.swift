import UIKit

//클로저 Closuer
//
//코드블럭(Code Block) - 코드 뭉치
//코드 뭉치를 변수로 만들고, 매개변수로 전달하고, 실행도 할 수 있다.
//코드블럭을 변수로 만들면 좋은 점 : 비동기적인 처리(코드를 읽어들이는 시점과 실행하는 시점)
//통신 - 요청과 응답처리, UI이벤트 - 클릭이벤트가 생성될때 실행.

//함수형 언어의 특징 : 순차적(절차적)언어 -> 클래스지향언어(자바,C#) -> 함수형 언어(JS, Swift, Kotlin)

//클로저를 만드는 방법
//{ (매개변수이름: 타입) -> 반환형 in
//   수행할 코드들 ....
//}

//일반함수
func add(a:Int , b:Int) -> Int {
    return a + b;
}

//일반변수
var sub : Int = 10

//클로저 변수: 코드뭉치(블럭)을 만든다.
var sum: (Int,Int) -> Int = {
    (a:Int,b:Int) -> Int in
        return a + b
}
//클로저 변수를 실행해 보자
var result = sum(10,20)

//일반함수의 매개변수로 클로저변수를 전달해보자
//값을 전달하는 것이 아니고, 코드뭉치(코드불럭,변수)를 전달해 주는 것
func calc(a:Int, b:Int, method: (Int,Int) -> Int ) -> Int {
    return method(a,b)
}
result = calc(a:10, b:20, method:sum)

//클로저변수 사용예 2
//일반함수
func printMyName(name1:String, name2:String) {
    print("name1:\(name1), name2:\(name2)")
}

printMyName(name1: "홍길동", name2: "변사또")

//일반함수 코드블럭을 클로저변수로 만들어보자
var myClosure: (String, String) -> Void = {
    (name1: String, name2:String) -> Void in
    print("name1:\(name1), name2:\(name2)")
}
myClosure("홍길동","변사또")

//일반함수를 그대로 클로저변수를 선언
var myClosure2 : (String,String) -> Void = printMyName(name1:name2:)
myClosure2("홍길동","변사또")
