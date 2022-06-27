import UIKit

//튜플 Tuple : 간단 자료형

//배열과 딕셔너리의 중간형태, 간단하게 사용하고 버리는 용도
//형식 : (값1, 값2, 값3)
//      (이름1:값1, 이름2:값2, 이름3:값3)
//용도 : 함수의 리턴값이 항상 1개인데, 함수의 리턴값을 여러개로 반환할 수 있음.
//      이때 사용하면 유용함.

var myTuple = (10, "tom", 3.16)
myTuple.0
myTuple.1
myTuple.2

//튜플에 이름을 붙여서 사용할 수 있음
let (count, name, value) = myTuple
count
name
value

//튜플에 이름을 붙여서 사용함
let myTuple2  = (count:10, name:"tom" , value:3.14)
myTuple2.count
myTuple2.name
myTuple2.value

//함수의 반환형으로 튜플을 사용해보자
func myFunc() -> (Int,String,Float) {
    return (10,"tom",3.14)
}
let resultTuple = myFunc()
resultTuple.0
resultTuple.1
resultTuple.2

//튜플 타입 지정 가능, 타입얼라이스
typealias MyTupleType = (Int,String,Float)
let myTuple3: MyTupleType = (10, "tom", 3.14)
myTuple3
