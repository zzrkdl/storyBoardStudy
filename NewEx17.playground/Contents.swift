import UIKit
import Foundation

//열거형 Enum

//열거형 사용이유 : 숫자보다는 문자로 기억하는 것이 쉽기 때문
//스위프트 열거형은 단순 배열이나 데이타타입이 아니라
//확장형입니다. 함수도 넣을 수 있음.

enum Weekday {
    case mon
    case tue
    case wed
    case thu
    case fri ,sat, sun
}

var day : Weekday = Weekday.mon
day = Weekday.sat
day = .fri  //열거형 타입을 생략가능, 타입추정

//switch case 조건문과 연동
switch day {
case.mon, .tue, .wed, .thu:
    print("월화수목 입니다.")
case .fri, .sat :
    print("금토 입니다.")
default:
    print("일요일입니다.")
}

enum Hero :Int {
    case Ironman = 0
    case Spidernam = 1
    case Hulk //자동으로 2가 들어감.
}
print(Hero.Ironman)
print(Hero.Spidernam)
print(Hero.Hulk)
print(Hero.Ironman.rawValue)
print(Hero.Spidernam.rawValue)
print(Hero.Hulk.rawValue)

//열거형 안에 함수를 넣을 수 있다.
enum Month {
    case jan, fab, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    func printMonth() {
        switch self {
            case .jan, .fab, .mar:
                print("1,2,3월")
            case .apr, .may, .jun:
                print("4,5,6월")
            case .jul, .aug, .sep:
                print("7,8,9월")
            case .oct, .nov, .dec:
                print("10,11,12월")
        }
    }
}
Month.apr.printMonth()
