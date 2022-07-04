import UIKit

//변수와 상수
//변수 : Variable : 수학적으로 변하는 수, 프로그래밍에서는 메모리 공간(예-4byte). 숫자나 문자열 저장
//상수 : Constant : 변수이면서 값이 한번 정해지면 못바꾸는 변수.

//변수 var : Variable
//상수 let : Letter

//변수의 선언
//var 변수이름 : 자료형(변수타입) = 값(변수)
var myVar1 = 10 //타입 추정
var myVar2 : Int = 30 //명시적 선언


//상수의 선언
let myLet1 = 10
//myLet1 = 20  //에러, 값을 재할당 할 수 없음
let PI = 3.14  //원주율
let G = 9.8 //중력가속도

//한줄에 여러 변수를 선언
var myVar3, myVar4, myVar5 : Int
myVar3 = 10
myVar4 = 20
myVar5 = 30


let myLet2, myLet3, myLet4 : Int
myLet2 = 10
myLet3 = 20
myLet4 = 30

//변수 이름 짓는 법
//일반 변수, 함수 이름 : 소문자로 시작함.  상수는 대문자로 보통 사용함
//예) student , count
//클래스, 구조체, 열거형 : 영대문자로 시작함
//예) Student , Count
//첫글자만 대문자로 적는 것 : Camel Texting(낙타 봉오리)
//countOfStudent 단어가 바뀌게 될 때마다 첫마디 대문자
//코드를 잘 작성하는 법 : 가독성있는 코드 작성하는 것
//클린코드 책 : 코드 리딩(읽는) 시간 80%, 코드 작성 : 20%
