import UIKit

//연산자 Operator

//연산자 우선순위 : 산술 > 비교 > 논리 > 대입
//곱하기 나누기 먼저 수행됨 동일인 경우 왼쪽이 먼저 수행됨
var result1 = 10 + 2 - 3 / 4 * 7
//연산자 우선순위가 헷갈리면, 소괄호를 묶으면 우선순위를 줄 수 있다.
var result2 = 10 + 2 - ((3 / 4) * 7)

//이항연산자
//산비논대 : 산성비가 논에 온대
//산술 : + - * /(몫) %(나머지) : 연산결과가 값으로 나옴
//비교 : ==(같은가) !=(같지않은가) < 작은가 >큰가 <=작거나 같은가 >=크거나 같은가 : 연산결과가 true/false로 나옴
//논리 : &&(AND)~포함 ||(OR)또는 !(NOT 논리반전) : 연산결과가 true/false로 나옴
//대입 : = += -= *= /= %= : 연산결과가 값으로 나옴

//단항연산자
//증감연산자 ++ -- 스위프트 언어에서는 없어잠
// var++ => var + 1 또는 var += 1
var myInt: Int = 10
myInt += 1  // <= //var = var +1

//삼항 연산자 ? :
var myBool: Bool = (10 < 20) ? true : false

//?? 연산자 : 앞의 값이 널이면 뒤의 값을 기본값(디폴트)으로 전달한다.
var name: String? = nil
//name = "변사또"
print(name ?? "홍길동")

//범위 연산자 : Range Operater 파이썬의 범위와 유사함.
//시작값...종료값 으로 구성함
let range = 1...10
print(range)
for i:Int in range {
    print(i)
}

let range2 = 1..<10 //1...9
for i:Int in range2 {
    print(i)
}

//감소식
for i:Int in range2.reversed() { //9...1
    print(i)
}

//대입 연산자
var myNum1 = 10
myNum1 += 1 //myNum1 = myNum1 + 1
myNum1 -= 1 //myNum1 = myNum1 - 1
myNum1 *= 1 //myNum1 = myNum1 * 1
myNum1 /= 2 //myNum1 = myNum1 / 2
//myNum1 = 5
myNum1 %= 2 //myNum1 = myNum1 % 2
