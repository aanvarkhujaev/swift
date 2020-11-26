//
//  main.swift
//  lesson1
//
//  Created by Akbar on 11/25/20.
//

import Foundation

let E = "x^2+14x+45=0"
let a = 1
let b = 14
let c = 45
let D = b * b - 4 * a * c
let x1 = (-Double(b) + sqrt((Double)(D)))/(Double)(2 * a)
let x2 = (-Double(b) - sqrt((Double)(D)))/(Double)(2 * a)
print("У уравнения ",E," два корня ",x1, " и ",x2)
