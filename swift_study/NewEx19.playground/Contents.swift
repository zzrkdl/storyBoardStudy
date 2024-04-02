import UIKit

//옵셔널 체이닝
//널체크를 편하게 해주는 방법

//옵셔널 변수 관련 기능
//옵셔널 바인딩 : if let
//강제 언래핑 : !연산자
//이른 탈출(복귀) : guard let, guard else
//옵셔널 형변환 : as? 널이 아니면 형변환
//옵셔널 기본값 : ?? "기본값"

class Person {
    var objContact: Contact?
    //생성자 함수에서 초기화
    init() {
        self.objContact = Contact()
    }
}
class Contact { // 연락처
    var name: String? //초기화 안됨
    var phone : String? //초기화 안됨
    var email: String = "모름"
}
let p = Person()
dump(p)

//p.objContact = nil
//objContact가 nil이므로 name = "번사또"로 대입되지 않고 지나감
p.objContact?.name = "변사또"
dump(p)

//옵셔널 바인딩으로 처리할 때
if let newObj = p.objContact {
    newObj.name = "이몽룡"
}else {
    print("nil임")
}
dump(p)

//옵셔널 바인딩 복습

let x: Int? = 10
let y: Int? = nil

if let xx = x {
    print("x = \(xx)")
}
else {
    print("x is Optional")
}
if let yy =  y {
    print("y = \(yy)")
}

//다중으로 옵셔널 바인딩
//옵셔널 바인딩을 할때 여러개의 객체를 한번에 처리할 수 있음.
let name1: String?
let name2: String?

name1 = "song"
name2 = "kim"

if let nameFirst = name1,
   let nameLast = name2 {
    print(nameFirst,nameLast)
}

//이른 탈출(guard let , guard else) 복습

let a : Int? = 10
let b : Int? = nil

func opbinding() {
    
    guard let aa = a else {
        return print("a is Optional")
    }
    print(aa)
    guard let bb = b else {
        return print("b is Optional")
    }
    print(bb)
}
opbinding()

//옵셔널 바인딩 if let 과 guard let의 차이점
// if let 은 if , else 일 경우 모두 처리가 가능하지만 할당한 상수를 if 안에서만 사용가능 (지역변수)
// guard let 은 else 일 경우만 처리가 가능하지만 할당한 상수를 어디서든 사용가능 (전역변수)
