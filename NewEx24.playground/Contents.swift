import UIKit

//assert 와 guard

//assert : 검증하다
//guard : 보호하다. 이른 탈출(Early Exit)

//Assert : 검증을 통해서 코드가 통과하는지 조사. 안 맞으면 코드가 중단.
var myInt : Int = 10

//10이면 통과, 아니면 중단
assert(myInt == 10, "myInt가 10이 아닙니다.") //중단함

myInt = 20
//assert(myInt == 10, "myInt가 10이 아닙니다.") //중단함

//함수를 이용한 assert
func myFuncAssert(age:Int?) {
    assert(age != nil, "age가 nil임")
    assert(age! >= 0 && age! < 120, "age값이 정상범위를 벗어남")
    print("입력된 나이는 \(age!)입니다.")
}
myFuncAssert(age: 30)
//myFuncAssert(age: nil)
//myFuncAssert(age: 150)

//guard let 구문을 이용, guard else 구문
func myFuncGuard(age: Int?) {
    guard let newAge = age, newAge >= 0 && newAge < 120 || newAge != nil else {
        //그외의 조건이라면, 이른 탈출 return
        print("age nil이거나 정상 범위를 벗어남")
        return
    }
    //정상적인 코드들...
    print("입력된 나이는 \(age!)입니다.")
}
myFuncGuard(age: nil)
myFuncGuard(age: -10)
myFuncGuard(age: 30)

