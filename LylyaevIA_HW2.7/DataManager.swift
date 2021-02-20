//
//  DataManager.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 20.02.2021.
//


class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Aaron","Bill","Jack",
        "Bob","Garri","Andrew","Ray"
    ]
    let lastNames = [
        "Green","White","Black",
        "Smith","Walker","Blade","Truman"
    ]
    let emails = [
        "aaa@mail.ru","bbb@mail.ru","ccc@mail.ru",
        "nnn@mail.ru","ggg@mail.ru","ddd@mail.ru","ttt@mail.ru"
    ]
    let phones = [
        "+123456","+986543","+385603",
        "+762106","+743190","+098765","+519345"
    ]
    
    private init() {}
}
