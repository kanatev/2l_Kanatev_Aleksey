//
//  main.swift
//  2l_Kanatev_Aleksey
//
//  Created by AlexMacPro on 22/11/2018.
//  Copyright © 2018 AlexMacPro. All rights reserved.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.
var userDigit = 9
func evenOrNot (_: Int) {
    if userDigit % 2 == 0 {
        print("Задание 1. Цифра \(userDigit) четная\n")
    } else {
        print("Задание 1. Цифра \(userDigit) нечетная\n")
    }
}

evenOrNot(userDigit)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divide3 (_: Int) {
    if userDigit % 3 == 0 {
        print("Задание 2. Число \(userDigit) ДЕЛИТСЯ на 3 без остатка\n")
    } else {
        print("Задание 2. Число \(userDigit) НЕ делится на 3 без остатка\n ")
    }
}

divide3(userDigit)

// 3. Создать возрастающий массив из 100 чисел.
var digit1 = 0
var array1: [Int] = []
for _ in 1...100 {
    digit1 += 1
    array1.append(digit1)
}
print("Задание 3. Возрастающий массив из 100 чисел: array1 = \(array1)\n")

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var array2 = array1
for i in array2 {
    if i % 2 == 0 {
        if let index = array2.index(of: i) {
            array2.remove(at: index)
        }
    }
    if i % 3 != 0 {
        if let index = array2.index(of: i) {
            array2.remove(at: index)
        }
    }
}
print("Задание 4. Из массива удалены четные числа и те, которые не делятся на 3. array2 = \(array2)\n")

// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
let n: Int = 99
var f: [Double] = [0, 1]

func fibonacci (_: Int) {
    for i in stride(from: 2, to: n.advanced(by: 1), by: 1) {
        f.append(f[i.advanced(by: -1)] + f[(i).advanced(by: -2)])
    }
    print("Задание 5. Массив из \(f.count) чисел Фибоначчи: array3 = \(f)\n")
}
fibonacci(n)

// 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
var primeArray: [Int] = []
var n123: Int = 1

for _ in 1...1000 where primeArray.count < 100 {
    var divs = 0
    n123 += 1
    for i in 1...n123 {
        if n123 % i == 0 {
            divs += 1
            }
        }
        if divs == 2 {
            primeArray.append(n123)
        }
}
print("Задание 6. В массиве primeArray \(primeArray.count) простых чисел:")
print(primeArray)
