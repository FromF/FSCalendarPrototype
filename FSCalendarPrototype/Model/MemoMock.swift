//
//  MemoMock.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import Foundation

class MemoMock: NSObject {
    private let memoMock: [Memo] = [
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 1)
                .date!, content: "テスト 9/1"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 4)
                .date!, content: "テスト 9/4"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 10)
                .date!, content: "テスト 9/10"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 15)
                .date!, content: "テスト 9/15"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 20)
                .date!, content: "テスト 9/20"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 25)
                .date!, content: "テスト 9/25"),
        Memo(date: DateComponents(calendar: Calendar.current, year: 2021, month: 9, day: 30)
                .date!, content: "テスト 9/30"),
    ]
    
    func fetch() -> [Memo] {
        return memoMock
    }
}
