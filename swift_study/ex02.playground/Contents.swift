import UIKit

//변수와 상수
//변수 : Variable : 수학적으로 변하는 수, 하지만 프로그래밍에서는 메모리 공간(예-4byte). 변수는 숫자나 문자열 저장
//상수 : Constant : 변수이면서 값이 한번 정해지면 바꾸지 못하는 변수임  //java의 final 비슷?

//변수 var
//상수 let Letter

//변수의 선언
//var 변수이름 : 자료형(변수타입) = 값(변수)
var myVar1 = 10 //타입 추정
var myVar2 : Int = 10 //타입 명시적 선언


//상수의 선원
let myLet1 = 10
//myLet1 = 20  //에러, 값을 재할당 할 수 없음
let PI = 3.14 //원주율
let G = 9.8 //중력가속도

//한줄에 여러 변수를 선언
var myVar3, myVar4, myVar5: Int
myVar3 = 10
myVar4 = 20
myVar5 = 30

//변수 이름 짓는 법
//일반 변수, 함수 이름 : 소문자로 시작함.
//예) student, count
//클래스, 구조체, 열거형 : 영대문자로 시작함
//예) Student, Count
//첫글자만 대문저로 적는 것을 : camel Texting(낙타 봉오라) java에서는 카멜케이스라고 부름
//countOfStudent //가독성을 위해서
//코드를 잘 작성하는 방법 : 가독성있는 코드 작성하는 것
//클린코드 책 : 품질좋은 코드를 작성하는 법에 대해서 나와있음 코드 리딩(읽는) 시간 80%, 코드 작성 : 20%

