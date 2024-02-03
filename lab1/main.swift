//
//  main.swift
//  lab1
//
//  Created by Nazgul Atykhan
//

import Foundation

func combineStrings() {
    print("1. Введите первую строку:")
    guard let firstLine = readLine(), !firstLine.isEmpty else {
        print("Первая строка не введена.")
        return
    }

    print("Введите вторую строку:")
    guard let secondLine = readLine(), !secondLine.isEmpty else {
        print("Вторая строка не введена.")
        return
    }

    let combinedString = firstLine + secondLine
    print("Результат объединения: \(combinedString)")
}


func flipString() {
    print("2. Введите строку для переворота:")
    guard let inputString = readLine(), !inputString.isEmpty else {
        print("Строка не введена.")
        return
    }

    let reversedString = String(inputString.reversed())
    print("Результат переворота: \(reversedString)")
}


func countCharacters() {
    print("3. Введите строку для подсчета символов:")
    guard let inputString = readLine(), !inputString.isEmpty else {
        print("Строка не введена.")
        return
    }

    let characterCount = inputString.filter { !$0.isWhitespace }.count
    print("Количество символов (без пробелов): \(characterCount)")
}

func searchSubstring() {
    print("4. Введите строку:")
    guard let inputString = readLine(), !inputString.isEmpty else {
        print("Строка не введена.")
        return
    }

    print("Введите подстроку для поиска:")
    guard let substring = readLine(), !substring.isEmpty else {
        print("Подстрока не введена.")
        return
    }

    if let range = inputString.range(of: substring) {
        let index = inputString.distance(from: inputString.startIndex, to: range.lowerBound) + 1
        print("Первое вхождение подстроки \"\(substring)\" на позиции: \(index)")
    } else {
        print("Подстрока не найдена в строке.")
    }
}

combineStrings()
flipString()
countCharacters()
searchSubstring()

