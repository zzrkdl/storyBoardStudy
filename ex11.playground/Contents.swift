import UIKit

//문자열 관련 함수들

//String : 스위프트 구조체 타입
//NSString : NS계열 클래스(오브젝티브 C)

//값 복사를 간편하게 하기위해서 String을 사용할 것을 권장!

//NSString 을 String 으로 변환해서 사용가능
let myNSString : NSString = "john"
let mySwiftString : String = String(myNSString)

//String을 NSString으로 변환
let againNSString : NSString = NSString(string: mySwiftString)

//문자열 관련 함수들

var myString: String = "hong"
//문자열의 길이
myString.count

//문자열의 비교
let str1 : String = "Apple"
let str2 : String = "Banana"
if str1 == str2 { //자바 : .equal()함수를 사용해야 됨.
    print("문자열 값이 서로 같음")
} else {
    print("문자열 값이 서로 같지 않음")
}

let result  = str1.compare( str2)
switch result {
    case ComparisonResult.orderedSame:
        print("같음")
    case ComparisonResult.orderedAscending:
        print("값이 큼")
    case ComparisonResult.orderedDescending:
        print("값이 작음")
    default:
        print("그외의 경우")
}

//문자열 연결 : + 연산자 (양쪽 다 문자열 타입이면 + (문자열 연결 연산자)로 동작함)
print(str1 + str2)
print(str1.appending(str2))

//문자열에서 특정 문자 하나를 가지고 올 때
let text = "abc"
//print(text[0]) //배열처럼 인덱스로 접근이 불가
let index = text.index(text.startIndex, offsetBy: 0)
let char : Character = text[index]

//문자열의 순환
for ch in text {
    print(ch)
}

//문자형 변수
let char2 : Character = "A" //문자(하나)형 변수는 쌍따옴표만 사용가능.
