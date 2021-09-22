//
//  CalendarViewModel.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import UIKit

class CalendarViewModel: ObservableObject {
    @Published var memoList: [Memo] = []
    
    init() {
        memoList = MemoMock().fetch()
    }
}
