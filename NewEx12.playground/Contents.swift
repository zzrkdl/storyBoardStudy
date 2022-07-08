import UIKit

//함수 function
//함수의 용도
//1. 코드를 기능별로 분리하고,(복잡한 코드를 간결하게 함)
//2. 코드블럭에 이름을 붙일 수 있고,
//3. 코드를 재사용할 수 있다. 코드중복을 피할 수 있다.

//func 함수이름(매개변수이름 : 타입) -> 반환형타입 {
//  수행문...
//}

func myFunc(){
    print("myFunc()호출됨")
}
myFunc()

//함수의 4가지 패턴
//1. 매개변수 없고, 반환형 없음
func myFunc1() -> Void { //Void 생략가능
    print("myFunc1() 호출됨")
}
myFunc1()
//2. 매개변수 있고, 반환형 없음
func myFunc2(name:String) {
    print("myFunc2() 호출됨" + name)
}
myFunc2(name: "홍길동")// 매개변수이름과 값을 동시에 넣어줌.
//3. 매개변수 없고, 반환형 있음
func myFunc3() -> Int {
    print("myFunc3() 호출됨")
    return 10
}
let result = myFunc3()

//4. 매개변수 있고, 반환형 있음
func myFunc4(name:String) -> String {
    print("myFunc4() 호출됨")
    return name + "반환됨"
}
myFunc4(name: "홍길동")

func myFunc5() -> String {
    print("myFunc5() 호출됨")
    return "func호출성공!"
}
let result2 = myFunc5()

//함수의 고급 문법

//매개변수를 여러개 넣을 때
func printMyName(name1: String, name2: String){
    print("name1:\(name1) name2:\(name2)")
}
printMyName(name1: "홍길동", name2: "뱐시떠")

//매개변수의 기본값을 넣을 수 있음
func printMyName2(name1: String, name2: String="춘향이") {
    print("name1:\(name1) name2:\(name2)")
}
printMyName2(name1:"홍길동")
printMyName2(name1: "홍길동", name2: "변사또")

//함수 호출 시 매개변수이름 생략 가능
func printMyName3(_ name1: String, _ name2: String) {
    print("name1:\(name1) name2:\(name2)")
}
printMyName3("홍길동", "변사또")


//매개변수이름에 별명(레이블)을 줄 수 있음
func printMyName4(hero name1:String, actor name2: String) {
    print("name1:\(name1) name2:\(name2)")
}
printMyName4(hero: "홍길동", actor: "변사또1")

//가변 매개변수 - 매개변수를 배열로 입력할 수 있음.
func printMyName5(name1: String, name2:String ...){
    print("name1:\(name1) name2:\(name2)")
    for name in name2 {
        print(name)
    }
}
printMyName5(name1: "홍길동", name2: "변사또","춘향이","이몽룡")

//복습

//매개변수와 반환값 둘 다 있는 경우
func funcEx1(a:Int , b:Int) -> Int {
    var sum : Int
    sum =  a + b
    return sum
}

let result1 = funcEx1(a: 4 ,b: 5)
print("\(result1)")

func string_ex (name:String, age:Int, height:Double) -> String {
    return "my name is \(name),age is \(age),height is  \(height)"
}

let sentence = string_ex(name: "song", age: 24, height: 183)
print(sentence)
