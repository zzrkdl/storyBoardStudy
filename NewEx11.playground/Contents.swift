import UIKit

//문자열 관련 함수들

//String : 스위프트 구조체 타입
//NSString : NS계열 클래스 타입(오브젝티브 C)

//값 복사를 간편하게 하기위해서 String을 사용할 것을 권장!

//NSString을 String 변환해서 사용가능
let myNSString : NSString = "john"
let mySwiftString: String = String(myNSString)

//String을 NSString으로 변환
let againNSString: NSString = NSString(string: mySwiftString)

//문자열 관련 함수들

var myString: String = "hong"
//문자열의 길이
myString.count

//문자열의 비교
let str1: String = "Apple"
let str2: String = "Banana"
if str1 == str2 { //자바 : .equal() 함수를 사용해야 됨.
    print("문자열 값이 서로 같음")
} else {
    print("문자열 값이 서로 같지 않음")
}

let result = str1.compare(str2)
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

//문자열 연결 : + 연산자 (양쪽 다 문자열 타입이면 +(문자열 연결 연산자)로 동작함)
print(str1 + str2)
print(str1.appending(str2))

//문자열에서 특정 문자 하나를 가지거ㅗ 올때
let text = "abc"
//print(text[0]) //배열처럼 인덱스로 접근 불가
let index = text.index(text.startIndex, offsetBy: 0)
let char : Character = text[index]

//문자열의 순환
for ch in text {
    print(ch)
}

//문자형 변수
let char2 : Character = "A" //문자(하나)형 변수는 쌍따옴표만 사용가능.
let char3 : Character = Character("A")

//문자열에 문자열 추가하기
var myName2 : String = "tom"
myName2.insert("!", at: myName2.endIndex) //맨끝에 추가됨.
myName2.insert("@", at: myName2.startIndex) //맨앞에 추가됨.

myName2 = "tom"
//중간에 추가하기
let index2 = myName2.index(myName2.startIndex, offsetBy: 1)
myName2.insert(contentsOf: "My", at: index2)

myName2 = "tom"
//문자열 연결 연산자 +
let myName3 = "My" + myName2

//문자열 전부 삭제
var myString2 : String = "Swift Programming"
//myString2.removeAll()
myString2 = ""

//문자열 일부 삭제
var myString3 : String = "Swift Programming"
let result2 = myString3.removeFirst()
myString3

myString3 = "Swift Programming"
let removeIndex = myString3.index(myString3.startIndex, offsetBy: 3)
myString3.remove(at: removeIndex)
myString3

//문자열을 범위(여러문자)로 삭제하기
var myString4 = "Swift Programming"
let range = myString4.index(myString4.endIndex, offsetBy: -12) ..< myString4.endIndex
myString4.removeSubrange(range)
myString4

//문자열 검색
let myString5 : String = "Swift Programming"
if myString5.contains("Swift") {
    print("문자열 찾음")
}else {
    print("문자열 없음")
}

if let range = myString5.range(of: "Swift") {
    print("문자열 찾음 \(range)") //range가 nil이 아님
}else {
    print("문자열 없음 \(range)")
}

//문자열 분리 split
let myString6 = "1,2,3,4,5"
let arrayStr : [Substring] = myString6.split(separator: ",")
for str in arrayStr {
    print(str)
}

let arrayStr2: [String] = myString6.components(separatedBy: ",")
for str in arrayStr2 {
    print(str)
}

//문자열을 숫자로 바꿀때
let myString7 = "123"
let myInt : Int? = Int(myString7)
//정수를 실수로 변환
let myFloat: Float? = Float(myInt!)

//래핑클래스
//NSNumber : 모든 숫자 데이터형을 담을 수 있는 클래스(Int, Float, Double, Bool)
var myInt2 : Int = 10
let myIntNumber = NSNumber(value: myInt2)
var tempFloat = myIntNumber.floatValue
var tempInt = myIntNumber.intValue

//NSValue : 모든 데이타형을 래핑하는 클래스(기본자료형, 클래스(객체), 구조체, 열거형)
let rangeValue = NSRange(location: 0, length: 3)
let rangeValueObject = NSValue(range: rangeValue)
let tempRange = rangeValueObject.rangeValue

//문자열의 범위를 지정할때, NSRange를 사용함
var myNSString2 : NSString = NSString(string: "Swift Programming")
let subStr = myNSString2.substring(with: tempRange)

//Swift Any 데이터타입 : 모든 데이타 타입을 담을 수 있는 자료형
