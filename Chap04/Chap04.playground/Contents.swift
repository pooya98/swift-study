


/* 4강. 다수의 데이터 다루기 */



    // 4.1 튜플

        // 튜플 표현
            // - (data1, data2, data3) 로 표현


        // 변수(상수)로 다루기
var one = (1, "one", "일")


        // 값 얻어오기, 값 설정
one.2
one.2 = "하나"
one


        // 언더스코더(_) : 무시
let (num, _, _) = one
num


        // 튜플의 원소에 이름을 설정할 수 있음.
        // 설정한 원소의 이름으로 원소에 접근할 수 있음.
let two = (num: 2, eng: "two", kor:"둘")
two.num
two.kor


        // 튜플 간 비교
            // - 비교 연산자를 이용해서 비교
            // - 튜플 내 원소 순서대로 비교



    // 4.2 콜랙션 타입(배열)

        // 배열 설명
            // - 인덱스 기반으로, 다수의 데이터 다룸.

        // 배열 선언 방법
            // - 타입 선언 : Array<Element> or [Element]
            // - var로 배열 생성 : 배열 내용 수정 가능
            // - let로 배열 생성 : 배열 내용 수정 불가능(Immutable)

var intArray: [Int] = [1,2,3,4,5]
let strArray = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])


        // 공백 배열 생성

var emptyArray = [Int]()
var emptyArray2 = Array<Double>()
var emptyArray3: [String] = []


        // 배열 원소 개수 확인
intArray.count


        // 배열 공백 확인
emptyArray.isEmpty


        // 배열 항목 접근, 첨자 표기(subscript)
let element1 = intArray[0]
let element2 = floatArray[1]


        // 배열에 원소 추가
            // - append(), insert() 함수 이용


        // 배열에 원소 삭제
            // - remove() 함수 이용
            // - removeFirst(), removeLast() 함수 이용


        // 배열 내 원소 변경
            // - 첨자로 변경
intArray[2] = 10
intArray
    

            // - 범위를 이용한 배열의 원소 변경
intArray[1...2] = [10, 20, 30]
intArray


        // 밸류 타입 (<-> 레퍼런스 타입)
            // - Swift의 배열은 밸류 타입 (* 참고로 Java는 레퍼런스 타입)
            // - 새로운 변수(상수)에 대입 -> 복사를 통한 대입

var array1 : [Int] = [1, 2, 3]
var array2 = array1
array1.append(4)

array1
array2 // array2에 추가된 원소가 반영되지 않음 => 복사를 통한 대입이 일어남.


        // 배열 간 비교
            // - [==] 연산자 이용



    // 4.3 콜렉션 타입(딕셔너리)

        // 딕셔너리 설명
            // - 키-값 방식으로 다수의 값 다루기
            // - 딕셔너리 내 키는 유일
            // - 키 : 해시값을 제공할 수 있는 Hashable


        // 딕셔너리 객체 생성 (딕셔너리 선언 방법)
            // - 타입 선언 : 키와 값, 두 타입 필요
            // - Dictionary<Key, Value> or [Key: Value]
            // - var로 딕셔너리 선언 : 수정 가능
            // - let로 딕셔너리 선언 : 수정 불가능

var dic1 = ["1월":"January", "2월":"February"]        // [String:String]
var dic2 = ["일":1, "이":2]                           // [String:Int]
var dic3 : Dictionary<Int, String> = [1: "One", 2: "Two"]   // [Int:String]


        // 빈 딕셔너리 객체 생성
var emptyDic = [Int: Int]()


        // 딕셔너리 원소 개수 확인
dic1.count


        // 딕셔너리 원소 접근(subscript)
dic1["2월"]


        // 딕셔너리 원소 추가
dic1["4월"] = "april"
dic1["5월"] = "May"
dic1


        // 딕셔너리 원소 변경
dic1["4월"] = "잔인한 달"
dic1.updateValue("계절의 여왕", forKey: "5월")
dic1


        // 딕셔너리 원소 삭제
dic1.removeValue(forKey: "2월")
dic1["3월"] = nil
dic1


        // 딕셔너리 복사 (배열과 마찬가지로 밸류 타입)
let newDic = dic1


        // 딕셔너리 객체 간 비교
            // - [==] 연산자 이용


        // 다중 구조
            // - 콜렉션을 이용한 다중 구조 (2차월 배열과 접근)

var twoDimentsionArray : [[String]] = [["a", "b"], ["c", "d", "e"], ["f"]]
twoDimentsionArray[1][1]

let evenNums = [2, 4, 6]
let oddNums = [1, 3, 5, 7]

let dic : [String:[Int]] = ["even" : evenNums, "odd" : oddNums]

dic["odd"]![1]



    // 4.4 콜렉션 타입(셋)

        // 셋 설명
            // - 유일한 원소
            // - 원소만 저장
            // - 임의의 순서


        // 셋 객체 생성 (셋 선언 방법)
            // - 배열에서 생성
var beverage : Set<String> = ["Coke", "Juice", "Milk"]


        // 공백 셋 객체 생성
var letters = Set<Character>()


        // 셋 원소의 개수
beverage.count


        // 빈 셋 확인
beverage.isEmpty


        // 원소 포함 확인
beverage.contains("Coke")


        // 셋 원소 접근
            // - index 이용하기
let index = beverage.startIndex
beverage[index]
let index2 = beverage.index(after: beverage.startIndex)
beverage[index2]


            // - 첫 번째 원소 접근 : first
beverage.first


            // - 배열 객체 생성 후 접근
let beverageArray = Array(beverage)


        // 셋 원소 추가
beverage.insert("Soda")


        // 셋 원소 삭제
beverage.remove("Milk")


        // 셋 집합 연산
            // - intersection(교집합)
var set1 : Set<Int> = [1,2,3]
var set2 : Set<Int> = [2,3,4]

let set3 = set1.intersection(set2)


            // - union(합집합)
let set4 = set1.union(set2)


            // - symmetricDifference(대칭차집합)


            // - subtracting(차집합)
