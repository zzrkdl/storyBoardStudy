import UIKit

//익스텐션 Extension (확장).
// 기능 : 기존에 있던 클래스, 구조체, 열거형, 기본자료형(Int,Float)에 기능을
//       확장할 수 있음.

//오버로딩: 같은이름의 함수를 매개변수를 다르게 해서 확장
//오버라이딩 : 부모클래스의 메소드를 자식클래스에서 재정의해서 사용함. 이름+매개변수 동일함.
//익스텐션 : 다른 이름의 함수를 추가해서 확장 (기존 소스는 건드리지 않고)

//클래스의 상속 VS 익스텐션
//수직 확장      수평 확장
//클래스만 지원.   클래스, 구조체, 열거형, 기본자료형
//재정의가 가능.   재정의 불가(기존에 있던 함수들은 터치 불가)

extension Int {
    var isEven : Bool { // 짝수 여부를 논리값을 가짐.
        get {
            return self % 2 == 0
        }
    }
    var isOdd : Bool { // 홀수 여부를 논리값을 가짐.
        get {
            return self % 2 == 1
        }
    }
}

var myInt : Int = 10
myInt.isEven
myInt.isOdd
10.isEven
10.isOdd

extension Int {
    func multiply( by n : Int) -> Int {
        return self * n;
    }
}
myInt.multiply(by: 2)
10.multiply(by: 2)
