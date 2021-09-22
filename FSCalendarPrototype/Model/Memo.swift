//
//  Memo.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import Foundation

struct Memo : Identifiable {
    let id = UUID()
    var date: Date
    var content: String
}
