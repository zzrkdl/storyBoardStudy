import UIKit

//콜렉션 Collection (모음 - 라이브러리)
//1. 리스트 - List (배열+리스트) 자바 : ArrayList, int[]
//2. 딕셔너리 - Dictionary (키-값) 자바 : Map, HashMap
//3. 집합 - Set (집합구조) 자바 : HashSet

//Array : 같은 타입의 데이타가 나란히 배열된 구조.(순서있음)
//        Int배열, String배열, 구조체 배열, 객체(클래스) 배열
// 배열을 선언하는 방법
var myArray1 : Array<Int> = Array<Int>()
var myArray2 : Array<Int> = []  //1순위
var myArray3 : [Int] = []   //2순위
var myArray4 = Array<Int>()     //타입추정
var myArray5 = [Int]()          //타입추정

var myArray6 : Array<Int> = []
myArray6.append(10)
myArray6.append(20)
myArray6.append(30)

print(myArray6) //순서 가져올때는  myArray6[0]인덱스로 가져옴
dump(myArray6)

//포함하고 있는가?
myArray6.contains(20)
//배열 갯수
myArray6.count
//요소의 삭제
myArray6.remove(at: 0)
myArray6
myArray6.removeLast()
myArray6
myArray6.removeAll() //모두 삭제
myArray6


//중간에 추가시
myArray6.insert(40, at: 0)
myArray6.insert(50, at: 0)

//배열이 비어있는지?
myArray6.isEmpty

//배열의 순환
for myInt in myArray6 {
    print(myInt)
}

//연습문제
//names라는 문자열타입 배열을 선언하고
// "tom"을 추가하고,
// "john"을 추가하고,
// "hana"을 추가하고
//배열의 갯수를 출력하시오.
//모든 배열의 요소를 출력하시오
//"john"만 출력하시오.
//"tom"이 배열-리스트 안에 있는지 true/false로 출력하시오.

var names : Array<String> = []

names.append("tom")
names.append("john")
names.append("hana")
names.count
for name in names {
    print(name)
}
print(names[1])
names.contains("tom")

//요소의 인덱스를 가져올때
if let index = names.firstIndex(of: "tom") {
    print("tom의 인덱스는", index)
}

//배열관련 자료형
//NS계열 : NSArray(읽기만 가능), NSMutableArray(읽기,쓰기 가능)
//Swift계열 : Array(var, let) 읽기는 let

//NSArray -> Array 변환
var myNSArray = NSArray(objects: "a","b","c")
//NSArray -> NSMutableArray
var myNSMutableArray = NSMutableArray(array: myNSArray)
//NSMutableArray -> Swift Array
if let mySwiftArray = myNSMutableArray as NSArray as? Array<String> {
    print(mySwiftArray)
}
//as 형변환
//as? 옵셔널 형변환 (널이 아니면 변환하라!)

//Swift Array -> NSMutableArray
var mySwiftArray2 : Array<String> = ["a","b","c"]
var myMutableArray2 = NSMutableArray(array: mySwiftArray2)
//Swift Array -> NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)

//배열의 값 비고
let myArray7 = [1,2,3,4,5]
let myArray8 = [1,2,3,4,5]
if myArray7 == myArray8 {
    print("값이 같음")
}else {
    print("값이 다름")
}

//배열의 값을 치환하기
var myArray9 : Array<String> = ["A","B","C"]
myArray9.replaceSubrange(0..<2, with: ["X","Y"])

//배열의 값 정렬
var myArray10 : Array<String> = ["가","다","라","나"]
let sortedArray = myArray10.sorted()

//역순으로 정렬
let reversedSortedArray = Array(myArray10.sorted().reversed())

//특정 범위에서 요소를 추출해서 배열 만들기
let rangeArray = sortedArray[0...1]

//구조체(클래스) 객체 배열 만들기
struct MyStruct {
    var name  = "hong"
    var age = 30
    func myFunc(){
        print("myFunc()호출됨")
    }
}

//구조체 배열로 만들긷
var myStructArray: [MyStruct] = []
var myStruct1 = MyStruct()
var myStruct2 = MyStruct()
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

for myStruct in myStructArray {
    print( myStruct.name)
    print( myStruct.age)
    myStruct.myFunc()
}

//딕셔너리 Dictionary
//키-값으로 구성된 데이타 타입 자바 : Map Js:Key-Value객체
//JSON
// ["key1": value, "key2":value]

let myDic: [String:String] = ["key1": "value1", "key2":"value2"]
print(myDic)

//요소에 접근하는 법
print(myDic["key1"]!)
print(myDic["key2"]!)

var nameDic = ["name1": "홍길동", "name2":"변사또","name3":"춘향이"]
//새로운 요소를 추가
nameDic["name4"] = "이몽룡"
print(nameDic)

//Dic을 순환하기
for (key,value) in nameDic {
    print(key)
    print(value)
}

//요소 삭제
nameDic.removeValue(forKey: "name2")
print(nameDic)

//갯수
nameDic.count

//NS계열 : NSDictionary(수정불가), NSMutableDictionary 변경가능(추가,삭제)
//Swift계열 : Dictionary(var수정 let수정불가)

//집합 Set
//요소의 중복을 허용하지 않는 데이타 타입 : 자바 set(hashset)
var mySet: Set<Int> = []
mySet.insert(10)
mySet.insert(20)
mySet.insert(30)
print(mySet)
let result = mySet.insert(30) //데이타를 중복해서 넣을때, 무시됨.
print(result)
print(mySet)

mySet.isEmpty
mySet.contains(20)

//집합 연산
var mySet2 : Set<Int> = [10,20,30]
var mySet3 : Set<Int> = [30,40,50]
//합집합 A + B
var setSum = mySet2.union(mySet3)
print(setSum)
//교집합 A ^ B
var setCross = mySet2.intersection(mySet3)
print(setCross)
//차집합 A - B
var setSub = mySet2.subtracting(mySet3)
print(setSub)

//NS계열 : NSSet 변경불가 NSMutableSet 변경가능
//Swift계열 : Set(let, var)
