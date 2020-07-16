//
//  main.swift
//  L1_AnnaPanfilova
//
//  Created by Anna on 16.07.2020.
//  Copyright © 2020 Anna. All rights reserved.
//

import Foundation

//Задача 1: Решить квадратное уравнение.

var a : Float = 0
var b : Float = 0
var c : Float = 0


print ("Решение квадратного уравнения: ax2 + bx + c = 0")

print("Введите значение \"а\"")

a = Float(readLine() ?? "0") ?? 0

print("Введите значение \"b\"")

b = Float(readLine() ?? "0") ?? 0

print("Введите значение \"c\"")

c = Float(readLine() ?? "0") ?? 0


var discr : Float = pow(b,2) - 4*a*c
print("Дискриминант равен: \(discr)")

if discr > 0 {
    
    let x1 = (-b + sqrt(discr)) / (2 * a)
    print("х1 равен: \(x1)")

    let x2 = (-b - sqrt(discr)) / (2 * a)
    print("x2 равен: \(x2)")
    
} else if discr == 0 {
    
    let x = -b / (2 * a)
    print("х равен: \(x)")
    
} else if  discr < 0{
    
    print ("Корней нет")
}


// Задача 2: Найти гипотенузу, периметр и плоащдь прямоугольного треугольника

func findHypotenuse (a: Float, b: Float) -> Float{
    return sqrt(pow(a,2)+pow(b,2))
}

func findPerimeter (a: Float, b: Float) -> Float{
    return a + b + findHypotenuse(a: a, b: b)
}

func findArea (a: Float, b: Float) -> Float{
    return a * b / 2
}


var k1 : Float = 0
var k2 : Float = 0

print("Подсчет параметров прямоугольного треугольника")

print("Введите длину первого катета ")

k1 = Float(readLine() ?? "0") ?? 0

print("Введите длину второго катета ")

k2 = Float(readLine() ?? "0") ?? 0


let h = findHypotenuse (a: k1, b:k2)
print ("Гипотенуза равна: \(h)")

let p = findPerimeter (a: k1, b:k2)
print ("Периметр треугольника равен: \(p)")

let s = findArea (a: k1, b:k2)
print ("Площадь треугольника равна: \(s)")


//Задача 3: Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum: Float = 0
var percent: Float = 0

print("Расчет суммы вклада за 5 лет")

print("Введите сумму вклада")

sum = Float(readLine() ?? "0") ?? 0

print ("Введите годовой процент")

percent = Float(readLine() ?? "0") ?? 0


for _ in 0...4 {
    sum = sum + sum * percent / 100
}

print("Сумма вклада через 5 лет составит: \(sum)")
