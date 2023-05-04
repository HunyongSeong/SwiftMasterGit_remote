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
