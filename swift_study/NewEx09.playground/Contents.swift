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

//===== for문과 if문 while문 복습

var a : String = ""
var b : String = "짱구"
var c : String = "훈이"

if a == "짱구" {
    print("나는 짱구입니다.")
} else if a == "철수" {
    print("정답 !! ")
} else {
    print("그외의 값")
}

let age : UInt32 = arc4random_uniform(30)
var student : String = ""

if age <= 13 {
    print("나는 초등학생")
    student = "초딩!!"
}else if age < 17 {
    print("중학생")
    student = "중딩!!"
}else if age < 20 {
    print("고등학생")
    student = "고딩!!"
}else {
    print("졸업")
    student = "직장인"
}

print(student)

// 홀수만 나오게
for i:Int in 1...100 {
    if i%2 == 1 {
        print(i)
    }
}

let name : [String] = ["song", "kim", "park", "chang"]

for stat in name {
    print("name is \(stat)")
}

print("")
for i in stride(from: 0, to: 100, by: 2) {
    print("\(i)")
}


for i in 1...4 {
    print(i)
}

var i : Int = 0
while i < 4 {
    print("name is \(name[i]) ")
    i += 1
}

var j : Int = 0
while j < 5 {
    print(j)
    j += 1
}


//무한반복문 : 특정조건이 될때까지 무한히 반복되는 수행문
var index3 :Int = 0
while true {
    if index3 > 10 {
        break;
    }
    print(index3)
    index3 += 1
}
//break문
//continue문 둘다 사용 가능합니다.
print("")
//1~100 까지 1씩 증가하면서, 2의 배수만 출력하되 90보다 크면 탈출!
for i:Int in 1...100 {
    if i%2 != 0 {
        continue
    }
    if i>90 {
        break
    }
    print(i)
}

//repeat-while문 : 자바 do-while문과 동일
//적어도 한번은 수행후 조건 비교
//초기화
//repeat {
//  수행문
//  증감문
//} while 문
var index4 : Int = 0
repeat {
    print(index4)
    index4 += 1
} while index4 < 10

print("")
//이중 for문 : for문에 for문이 있는 경우
//구구단 출력 : 2~9단, 각 단에는 1~9까지의 값을 곱한 값
for i:Int in 2...9 {
    for j in 1...9 {
        print("\(i)*\(j) = \(i * j)")
    }
    print()
}

//레이블 구문 : 탈출지점을 알려줌
//이중, 삼중 for 문 break문으로 탈출시, 원하는 루프(for문)을 지정할 수 있음
OUTER : for i in 1...10 {
    print(i)
    for j in 1...10 {
        if i > 3{
            break OUTER;
        }
        print("\(i), \(j)")
    }
}
