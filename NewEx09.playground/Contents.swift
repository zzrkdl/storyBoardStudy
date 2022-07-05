import UIKit
import Foundation

//ex09
//반복문 for문(60%) while문(30%) repeat while문(10%)

//반복적인 수행문을 실행할 때
// 자바 : for( 초기화; 조건문; 증감문) 스위프트에서는 사라짐.

// 스위프트는 파이썬과 같이 범위연산자를 통해서 for문을 구현.

//1~10까지 출력

for i:Int in 1...10 {
    print(i)
}

//0~99까지 출력
for i:Int in 0...99 {
    print(i)
}

print("")

//연습문제 - 5분 영상멈춤
//10부터 35까지 출력하시오
for i:Int in 10...35 {
    print(i)
}

print("")

//100부터 0까지 출력하시오
for i:Int in (0...100).reversed(){
    print(i)
}

print("")

// 1~100까지 2씩 증가하여 출력하시오.
for i:Int in stride(from: 1, to: 100, by: 2) {
    print(i)
}

//for문으로 배열 순환하기
var arrayInt = [1,2,3,4,5]
print(arrayInt[0]) //첫번째 요소값
print(arrayInt[1]) //두번째 요소값
print(arrayInt[2]) //세번째 요소값
print("")
//향상된 for문처럼 돌림
for arrayValue in arrayInt {
    print(arrayValue)
}

//for문으로 딕셔너리(Dictionary)값을 순환하기
//딕셔너리 : 자바 Map, HashMap 과 동일한 자료구조 (Key-Value 키-값)
let persons = ["john": 1000, "kim": 2000, "hong":3000]
print(persons["john"]!)

for (name, money) in persons{
    print(name)
    print(money)
}

//while문
//패턴분석
//초기화
//while(조건문) {
//  수행문
//  증감문
//}
var index: Int = 0
while index < 10 {
    print(index)
    index += 1
}

//연습문제 - 5분 영상멈춤
// 1~100까지 2의 배수만 출력하시오.
// 2의 배수 조건 i%2 == 0

print("")
for i:Int in  1...100 {
    if i%2 == 0 {
        print(i)
    }
}

print("")
index = 0

while index <= 100 {
    if index%2 == 0 {
   print(index)
    
    }
    index += 1
}


