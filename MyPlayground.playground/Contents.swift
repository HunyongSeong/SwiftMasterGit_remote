import UIKit

var greeting = "Hello, playground"

// Study about swift

let n = 2
let n2 = Double(n)
print(n)

var a = 10

//MARK: - switch
// 스위치문 작성해보기
switch a {
case a where a < 10:
     print("10 <")
case a where a == 10:
    print("10")
    fallthrough // 아래까지 출력
case a where a > 10:
    print("> 10")
default:
    break
}
// 내가 여기서 실수한 부분 == default: / break 작성 안한것 case: 바로 이렇게 콜론 바로 넣어서 틀리게 작성한 것.
// case a < 10 이라고 바로 참 거짓 형태로 만든것. 조건문 만들어 주려면 case a where a == 10: 이렇게 해야함


var aaa = 30

switch aaa { // 상수 바인딩
case let a where a < 10:
     print("10 <")
case let a where a == 10:
    print(";10")
case let a where a > 10:
    print("> 10")
default:
    break
}

// 가위바위 보 문제 만들어보기 - 이지
// 컴퓨터 랜덤선택, 나 선택, 결과 출력 이겼다.

// 1 = 주먹, 2 = 가위, 3 = 보
var comChoice = Int.random(in: 1...3)
var meChoice = 1


switch comChoice {
case comChoice where comChoice == 1:
    if meChoice == 1 {
        print("same")
    } else if meChoice == 2 {
        print("lose")
    } else {
        print("win")
    }
    
case comChoice where comChoice == 2:
    if meChoice == 1 {
        print("win")
    } else if meChoice == 2 {
        print("same")
    } else {
        print("lose")
    }

case comChoice where comChoice == 3:
    if meChoice == 1 {
        print("lose")
    } else if meChoice == 2 {
        print("win")
    } else {
        print("same")
    }
default:
    print("?what?")
}

// 빙고게임 만들기 -> 매우 이지
// 컴슛자 하나 = 컴숫자 맞추기 목표
// 내숫자 하나
// 스위치문 내가 높으면 다운, 같으면 빙고, 낮으면 업 출력
var comBingo = Int.random(in: 1...10)
var myBingo = 4

switch myBingo {
case myBingo where myBingo > comBingo:
    print("Down")
case myBingo where myBingo == comBingo:
    print("bingo")
case myBingo where myBingo < comBingo:
    print("up")
default:
    print("???")
}

print(true)
print("true")

for i in 2...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}

print("aa", "bb", "cc", separator: "-", terminator: "\n")


var num1 = 11

if num1 > 2 {
    print(num1)
}

// 함수

func sayHelloTwo() -> () {
    print("Hello")
    print("Hello")
}
sayHelloTwo // <- 함수를 지칭할 때
sayHelloTwo() // 이렇게 변수에 넣는 형태에 따라서 다르네

var sayHelloTwoVar = sayHelloTwo
sayHelloTwoVar()

var sayHelloTwoVar2 = sayHelloTwo()
sayHelloTwoVar

// MARK: - 함수 메모리 구조
func aPlusB(a: Int, b: Int) -> Int {
    var c = a + b
    return c
}

func aPlusBTwo(a: Int, b: Int) -> Int {
    var c = doubleSquare(width: a, Height: b)
    return c
}

func doubleSquare(width: Int, Height: Int) -> Int {
    var result = width * Height
    return result
}

// func
aPlusB(a: 1, b: 5)
doubleSquare(width: 5, Height: 6)
aPlusBTwo(a: 5, b: 6)


// MARK: - 41강 - 함수
// 1. 랜던 문자열을 뽑아내는 함수를 만들어 보자!

var someString = "가나다라마바사"
someString.randomElement()
func RandomString(_ a: String) -> String {

//    var resultString: String = a.randomElement() // <- 나는 이렇게 써서 계속 오류
        var resultString = String(a.randomElement()!) // 이것이 맞음
    // 이렇게 하는 이유는 -> a.randomElement() 옵션으로 확인해보면, 이것은 옵셔널 타입으로 값이 없을수도 있다는 것을 알려주었고, Character 형이어서, String 타입으로 바꿔주어야 한다.!

    return resultString
}

RandomString(someString)

// 2. 소수를 판별하는 함수를 만들어보자

// 1- 과정. 2부터 가능한데 2는 1과 자기 자신만으로 이루어져있다
// 2 - 3은 1과 3으로
// 3 - 4는 1, 2, 4 / 5 = 1, 5 / 6 = 1, 2, 3, 6/ 7 = 1, 7 .... 13은 ...

// for 문으로 싹다 돌리고, if 문으로 13일 때, 10 보다 큰 수 중에서 / 2, 3, 5, 7 로 한번이라도 나누어진다면 안된다.
// 1부터 2 3 5 7 나눈 값이 1 이상이라면, if i/2 ,3, 5, 7 >= 1 이라면 소수 아님


// MARK: - if let 바인딩 연습

var optionalString: String? = "good"
var optionalStringTwo: String?

if let newString = optionalString {
    print(newString)
}

if let a = optionalStringTwo {
    print(a)
}

func guardLetTest(a: String?) -> () {
    guard let _ = a else {
        print("nillllll")
        return
        
    }
    print("there is string")
}

guardLetTest(a: optionalStringTwo)

// MARK: - Enumeration

var nums = [1, 2, 3, 4, 5, 2, 1]
for tuple in nums.enumerated() {
//    print(tuple)
    print("\(tuple.0) - \(tuple.1)") // tuple의 0번째 값과, 1번째 값이 있는 바구니에서 하나씩 꺼낸형태라서 이렇게 결과가 나오는 것 같다.!
}
// (offset: 0, element: 1)
// (offset: 1, element: 2)
// 이런식으로 출력됨. <- 아마 기본값이 세팅이 되어있나보다..! 신기함.















