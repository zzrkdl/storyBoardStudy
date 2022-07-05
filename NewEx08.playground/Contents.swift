import UIKit

//조건문   if문(80%) switch문(20%)

//if문의 4가지 패턴
//1. 단일(single) if문
if true { //소괄호가 없어짐, 중괄호 생략 불가
    //참일 때 수행
}

//2. if else 문
if false {
    //참일 때
}else {
    //거짓일 때
}

//3. if else if 문
if false {
    //ㅁ
} else if true { //A조건이 아니고, B의 조건인가?
    
} else { //A조건도 아니고, B의 조건도 아닌 모든 조건
    
}
//4. 중첩(duplicated) if문( if안의 if문, if in if)
// 3,4 depth이상 권장하지 않음. => function으로 대체하는 것이 좋다.
if true {
    if false {
        
    }else {
        
    }
}

//Ex 예제
var a = "철수"
var b = "짱구"
var c = "맹구"

if a == "철수" {
    print("a는 철수입니다.")
}else {
    print("a는 \(a)입니다.")
}

if b == "유리" {
    print("b는 유리가 아닙니다")
} else {
    print("b는 \(b)입니다.")
}

if c == "맹구" {
    print("땡 틀렸습니다.")
}else {
    print("c는 맹구입니다.")
}

var age : Int = 20
var student : String = ""

if age >= 8 && age <= 14 {
    student = "초등학생"
}else if age <= 16 {
    student = "중학생"
}else if age <= 19 {
    student = "고등학생"
}else {
    student = "축! 졸업 축하드려요!!"
}
print(student)



//랜덤수(임의의 수) 발생
let randomNum : UInt32 = arc4random_uniform(100) //0~99까지의 값을 랜덤수로 발생시킴.
//UInt32 => Int 로 형변환
let intValue: Int = Int(randomNum)

//로또번호 1~45까지의 값에서 하나의 랜덤수 발생
let lottoNum : UInt32 = arc4random_uniform(45) + 1 //0~44 =>

//switch case 문
switch lottoNum {
    case 0:
        print("0")
    case 1...20 :
        print("1~20")
    case 21...45 :
        print("21~45")
    default:
        print("그외의 값")
}

//연습문제 - 5분정도 잠시멈춤
//1부터 10사이의 랜덤수를 발생시키고
//if문을 이용하여
//5보다 작으먼 "5보다 작음" 출력하고
//8보다 작으면 "8보다 작음" 출력하고
//그외의 수이면 "그외의 수" 라고 출력하시오,

//switch case문으로 똑같은 결과를 출력하시오.
let lottoNum2 : UInt32 = arc4random_uniform(10) + 1

if lottoNum2 < 5 {
    print("5보다 작음")
}else if lottoNum2 < 8 {
    print("8보다 작음")
}else {
    print("그외의 수")
}

switch lottoNum2 {
    case 1..<5 :
        print("5보다 작음")
    case 6..<8 :
        print("8보다 작음")
    default:
        print("그외의 수")
}

var A : String = "A"
var B : String = "b"
var C : String = "한글"
switch A {
    case  "a"..."z" :
        print("소문자")
    case "A"..."Z" :
        print("대문자")
    default :
        print("그외의 값")
}

switch B {
    case "A"..."Z" :
        print("대문자")
    case "a"..."z" :
        print("소문자")
    default :
        print("그외의 수")
}

switch C {
    case "a"..."z":
        print("소문자")
    case "A"..."Z" :
        print("대문자")
    default :
        print("위대한 한글!")
}
