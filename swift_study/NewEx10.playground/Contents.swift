import UIKit

//변수의 값(Value) 타입과 참조(Reference) 타입

//값 타입 : 변수 안에 실제 데이타(값)이 있는 경우. 장점: 값 복사 편함. 대입(=)만으로 값복사 가능함.
//참조 타입 : 변수 안에 실제 값이 아닌, 그 값을 가진 메모리 주소값을 정수로 가진다.
//          대입문으로 값을 복사하면, 실제 값이 아닌 주소값이 복사됨.

//스위프트에서는
//값 타입 : 기본자료형(Int, Float, Double, Bool, String) => 구조체로 설계됨.
//        구조체, 열거형, 딕셔너리, 배열, 집합
//참조 타입 : 클래스(객체), NS류의 자료형들(NSString, NSInt - 오브젝티브 C)

//NS : Next Step의 약자 스티브잡스 아이폰이나 맥의 OS 기초를 만든 회사이름.
//스위프트는 값 타입을 선호함. 구조체 선호함.

//구조체 : Struct 변수와 함수를 사용 가능.   값 타입, 복사 간편. 상속 불가능
//열거형 : Enum 변수와 함수를 사용 가능.     값 타입, 복사 간편. 상속 불가능
//클래스 : Class 변수와 함수를 사용 가능.    참조 타입, 복사 복잡. 상속이 가능함.

struct MyStruct{
    var age = 30
}

class MyClass{
    var age = 30
}

//구조체의 객체 생성
let myStruct = MyStruct() //new 키워드가 사라짐
var myStruct2 = myStruct //age의 실제값이 복사됨.
myStruct2.age = 33
print(myStruct.age)
print(myStruct2.age)
//힌트 : myStruct와 myStruct2는 서로 다른 메모리 공간에 할당됨.

//클래스의 객체 생성 //하나의 공간 이어짐
let myClass = MyClass()
var myClass2 = myClass //myClass의 주소값(예 0x1000번지)이 정수로 전달됨.
myClass2.age = 33
print(myClass.age)
print(myClass2.age)
//힌트 : myClass와 myClass2는 주소값이 동일함. 같은 메모리공간을 가리키고 있음.


