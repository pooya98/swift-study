


/* 3강. 문자와 문자열 */



    // 3.1 문자 다루기

        // - 문자 : Character
import UIKit

let char1 : Character = "a"
let char2 : Character = "◻︎" // 유니코드 문자
let char3 : Character = "\u{2665}" // - \u{} : 유니코드 입력


        // 문자 비교
            // - [==] : 문자 비교 연산자



    // 3.2 문자열 다루기

        // 문자열 : String

var str1 = "Hello, Swift Language"
var str2 : String = "Swift"

let str3 = "1 + 2 = \(1 + 2)"  // String Interpolation (문자열 내삽)
let str4 = "Hello, \(str2)"

let strFromInt = String(100)    // 다른 기본 타입에서 문자열 생성
let strFromBool = String(true)
let strFromChar : Character = "♥︎"
let strFromChar2 = String(strFromChar)


        // 형식 문자열 생성
            // - Foundation Framework 필요 (but, PlayGround 생성 시 자동으로 import 되어 있음)

String(format: "%03d", 12)
String(format: "%3.2f", 3.14159)
String(format: "%3.2e", 3.14159)


        // 문자열 추가 (문자열 붙이기)
            // - [+] 연산자
            // - append(_:) 함수


        // 문자열 비교
            // - [==] 연산자
            // - hasPrefix(_:), hasSuffix(_:) 함수 : 문자열 시작, 끝 비교
            // - compare(_:) 함수 : 비교옵션, 범위, 로케일 등을 이용하여 비교 가능 -> 비교 결과 (오름차순, 같음, 내림차순)

let str = "Hello Swift"
str.hasPrefix("Hello")
str.hasSuffix("ground")


        // 문자열을 다른 타입으로 변환
            // - Int(), Double() 등의 함수 이용
            // - 변환 실패시 nil 반환


        // 문자열 대소문자 변환
            // - uppercased() 함수 : 소문자를 대문자로 변환
            // - lowercased() 함수 : 대문자를 소문자로 변환


        // 문자열 내 위치 다루기
            // - String.Index : 인덱스 객체 사용 (불편하네)

str.startIndex
str.endIndex


var secondIndex : String.Index = str.index(after: str.startIndex)


        // 부분 문자열
            // - 첨자 접근
let char5 = str[str.startIndex]
let char6 = str[secondIndex]
let subStr1 = str[str.startIndex...secondIndex]


        // 문자열 내 검색
            // - range 이용
let range1 : Range<String.Index>? = str.range(of:"sw")
let range2 = str.range(of:"sw", options: .caseInsensitive)


        // 트리밍
            // - trimmingCharacters(in:) 함수 이용
            // - 문자열 양 끝 특정 문자들 제거
            // - 문자열 중간은 제거 안함

let spaceStr = " Hello Swift "
spaceStr.trimmingCharacters(in: CharacterSet.whitespaces)


        // 문자열 내용 추가
            // - insert(_, at: ) 함수 이용

let ch : Character = "r"
var test_str = "TEST STRING"
test_str.insert(ch, at: test_str.startIndex)
test_str.insert(contentsOf: ["r", "l"], at: test_str.startIndex)


        // 문자열 일부 삭제
            // - remove(), removeSubrange() 함수 이용

test_str.remove(at: secondIndex)

let range = test_str.startIndex..<secondIndex
test_str.removeSubrange(range)


        // 문자열 I/O
            // - 파일로 저장 : write(toFile:_, atomically:_, encoding:_) 함수 이용
            // - 파일에서 문자열 일기 : String(contentsOfFile: filePath) 함수 이용
