//
//  CalendarView.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import SwiftUI

struct CalendarView: View {
    @StateObject private var calendarViewModel = CalendarViewModel()
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            FSCalendarView(selectedDate: $selectedDate, memoList: $calendarViewModel.memoList)
                .frame(height: 400)
                        
            List(calendarViewModel.memoList) { memo in
                HStack {
                    Text(memo.date.formatted(date: .numeric, time: .omitted))
                    Text(memo.content)
                }
            }

        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
