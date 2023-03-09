


/* 2강. 데이터 타입과 연산자 */



    // 2.1 출력 함수

import UIKit

print()

var greeting = "Hello, playground"
print("Hello,\(greeting)")  // '\()' : 평가 결과 출력



    // 2.2 변수와 상수

        // 변수 (var)
var i = 1
var f : Float = 1.1
i = 3

        // 상수 (let)
let constant = 123

            // - 변수 선언과 초기값 대입 분리 가능, but 분리 시 타입 선언 생략 불가
            // - 자동 초기화 안됨. 초기화 전에 사용하면 에러



    // 2.3 연산자

        // 산술 연산자
            // - [+, -, *, /, %] (이항)
            // - [+, -] (단항)
            // - 단항 증감 연산자 사용 불가능 -> 복합 대입 연산자를 대신해서 사용
            // - 연산자와 피연산자 사이 공백 주의 (공백 잘못 사용시, 산술 이항 연산자를 산술 단항 연산자로 인식할 수도 있음.)

        // 복합 대입 연산자
            // - [+=, -=, *=, /=, %=]

        // 비교 연산자
            // - [==, !=, <, >, <=, >=, ===]
            // - [===] : 레퍼런스 타입에 사용됨. 같은 주소를 가진 객체인지 확인할 때 사용함.

        // 3항 연산자
            // - [(비교식) ? (true expression) : (false expression)]

        // 범위 연산자
            // - 닫힌 범위 : 1...10 (1에서 10까지)
            // - 반 닫힌 범위 : 1..<10 (1에서 9까지)

        // 논리 연산자
            // - [&&, ||, !]

        // nil 연산자
            // - nil-coalescing 연산자(??) : nil 관련된 연산자
                // - value = optionalValue ?? defaultValue
                // - ?? 연산자는 nil이 아니면 unwrapping, nil이면 defaultValue



    // 2.4 기본 데이터 타입

        // - Bool, Int, UInt(부호 없는 정수), Float, Double, Character, String
        // - 크기에 따른 정수형 타입 : Int8, Int16, Int32, Int64, UInt8, ...
        // - 값의 범위 : Int.max, Int.min

        // - Swift는 타입에 대해 매우 깐깐함.
        // - 타입 변환 가능 : 변환할타입(변환될타입)
        // - 실수 타입의 기본 타입은 Double

        // - 타입 정보 얻기 : type(of: Val)
