//
//  main.swift
//  StructAndClass
//
//  Created by Taof on 12/24/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import Foundation

// MARK: Struct
struct Person {
    var name: String
    var age: Int
}

var person1 = Person(name: "Quang Anh", age: 20)
var person2 = Person.init(name: "Long", age: 19)

struct Person2 {
    var name: String = ""
    var age: Int = 0
    
    init() {
    }
    
    init(name: String){
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var person3 = Person2()
var person4 = Person2(name: "Quang")
var person5 = person4

person5.name = "Anh"
person4.name = "Tùng"

print(person4.name)
print(person5.name)


// MARK: Class

class People {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var people1 = People(name: "Tuấn", age: 20)
var people2 = people1

people2.name = "Thành"

print(people1.name)
print(people1.name)

// MARK: Bài tập

class Student {
    var name: String
    var diemTin: Float
    var diemXSTK: Float
    var diemA2: Float
    
    init(name: String, diemTin: Float, diemXSTK: Float, diemA2: Float) {
        self.name = name
        self.diemTin = diemTin
        self.diemXSTK = diemXSTK
        self.diemA2 = diemA2
    }
    
    func diemTrungBinh() -> Float{
        return (self.diemTin + self.diemXSTK + self.diemA2)/3
    }
}

var students = [Student]()

let std1 = Student(name: "Thành", diemTin: 7.0, diemXSTK: 6.0, diemA2: 5.0)
let std2 = Student(name: "Long", diemTin: 8.0, diemXSTK: 4.0, diemA2: 5.0)
let std3 = Student(name: "Quang Anh", diemTin: 6.0, diemXSTK: 9.0, diemA2: 5.0)
let std4 = Student(name: "Quang", diemTin: 7.0, diemXSTK: 6.0, diemA2: 8.0)
let std5 = Student(name: "Tuấn", diemTin: 6.5, diemXSTK: 6.0, diemA2: 5.0)

students = [std1, std2, std3, std4, std5]

for i in students{
    print("\(i.name) có điểm trung bình là \(i.diemTrungBinh())")
}
