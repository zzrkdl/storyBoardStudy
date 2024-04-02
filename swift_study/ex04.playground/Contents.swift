import UIKit


//기본자료형 (타입 Type) : 구조체로 설계됨.
//Int, UInt, Float, Double, Bool, Character, String

//Int : 정수형 기본 4바이트 (64비트 운영체제 8바이트)
//      정수: 자연수 셀수있는 수 -3,-2,-1,0,1,2,3
var myInt : Int = 10

//UInt : unsigned int 음수값이 없다는 의미 0, 1, 2, 3....
//       용도 : 음수값이 없기 때문에 더 많은 수를 저장할 수 있다.(2배)
var myUInt : UInt = 10

//Float : 실수형(4바이트), Double : 실수형(8바이트)
//예) 3.14, 2.46, 10/3 => 3.33333......
var myFloat : Float = 3.14
var myDouble : Double =  2.468

//Bool : 논리형(1바이트) true/false 값만 존재
var myBool : Bool = true

//Character : 문자형(2바이트) - 유니코드 지원 UTF-8
var myChar : Character = "A"

//String : 문자열(가변크기) : 메모리 제한만큼
var myString : String = "대한민국"
//문자열 연결 연산자 + 사용가능( 왼쪽이나 오른쪽에 문자열형이 있어야 됨)
myString = myString + " 만세"

//여러줄 문자열 """ 쌍따옴표 세개
// \n 특수문자 -> 줄바꿈
var myMultiString = """
여러줄의
문자열을
연결합니다.
"""
print(myMultiString)
