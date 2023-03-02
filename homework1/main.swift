//
//  main.swift
//  homework1
//
//  Created by Виталий Бородулин on 13.02.2023.
//

import Foundation

// 1.Написать код, который будет использовать 3 числа (Int, Float и Double) и выведет в консоль результат сложения всех трех чисел (Если число получается без остатка - написать Int результат. Если остаток имеется - записать в Float типе)

var numInt: Int = 25
var numFloat: Float = 25.125949
var numDouble: Double = 25.5058398593

var numResult = Float(numInt) + numFloat + Float(numDouble)

if numResult == Float(Int(numResult)){
    print("...")
}else{
    print("ostatok")
}

// 2. Разобраться как работает приведение типов и попробовать конвертировать разные типы (например Int в String, Bool в String, String в Int)

var ageString = "26"
var stringToInt = Int(ageString)!

var age1 = 23
var intToString = String(age1)

var isAge: Bool = true
var boolToString = String(isAge)

print(stringToInt, intToString, boolToString)

// 1.Создать 5 переменных(Данные о человеке). Создать простую функцию которая будет конвертировать эти данные так “Её/Его зовут Марат/Малика. Ей/ему 20 лет. Он/Она живет в Бишкеке. Он/Она работает в офисе. Суть задачи - Исходя из пола выдавать разные данные
var name = ""
var age = 0
var city = ""
var job = ""
var genderM = true

func personInfo() {
    if genderM{
    print( "Его зовут \(name). Ему \(age). Он живет в \(city). Он работает в \(job)")
    } else if !genderM{
        print( "Ee зовут \(name). Ей \(age). Она живет в \(city). Она работает в \(job)")
    }
}
personInfo()


// 2.Создать функцию, которая будет принимать число Int и выдавать в консоль таблицу умножения его от 1 до 10
func multiplication(num:Int) {
    var action = 1
    var result = 0
    var factor = 1
    while action < 11 {
        result = factor * num
        print("\(num) * \(factor) = \(result)" )
        factor += 1
        action += 1
    }
}
multiplication(num: 5)

func multiplication1(num:Int){

    for i in 1...10 {
    print("\(num) * \(i) = \(i * num)")
    }
  
}
multiplication1(num: 6)



// 3. Создать функцию, которая будет принимать 3 строки(String) и в конце возвращать одну строку которая будет содержать в себе все 3 строки с пробелами между ними.

func sumString( text1: String, text2: String, text3: String)-> String {
    
    return "\(text1) \(text2) \(text3)"
}
 var sumText = sumString(text1: "Петров", text2: "Иван", text3: "Васильевич")
print(sumText)


var nameArray = ["Alex","Berta","Mike","Maria"]

var nameArray2 = ["Maria","Homer","Andrei","Julia", "Maria"]
var nameArraysCount = 0
for i in nameArray {
    for i2 in nameArray2 {
        if i == i2 {
            nameArraysCount += 1
        }
    }
    
}
print("всего \(nameArraysCount) совпадений")



// ВТОРАЯ ДОМАШНЯЯ РАБОТА

// составить программу, используя цикл, которая посчитает сколько чисел начинаются с "1" и "3" и заканчиваются на "5" в диапазоне 0...1000

var numArray: [[String]] = [[]]
for num in 0...1000 {
    numArray.append([String(num)])
}
var index = 0
for arr in numArray {
    for str in arr {
        if str[str.startIndex] == "1" ||  str[str.startIndex]  == "3" || str[str.index(before: str.endIndex)] == "5" {
            index += 1
            continue
        }
    }
}
print(index)


// Используя условные операторы, функции и циклы создать следующую программу: Записать в одну переменную типа String 20 разных слов (с разной длиной) через запятую После того, как созданная ранее функция примет как аргумент созданную строку - вернет следующее (например) - “Яблоко - 6 символов \n Морковь - 7 символов” и т.д до последнего слова

var words = "Яблоко,машина,стол,балкон,ручка,кухня,книга,кнопка,зеркало,телефон,лампа,бумага,шнур,обои,шторы,сумка,цифра,квадрат,звонок,сандали"

func checkCount( word: String) {
    let str = (word.components(separatedBy: ","))
    for i in str {
        print("\(i) - \(i.count) символов")
    }
}
checkCount(word: words)

