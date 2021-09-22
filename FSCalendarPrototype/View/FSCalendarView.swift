//
//  FSCalendarView.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import SwiftUI
import FSCalendar

struct FSCalendarView: UIViewRepresentable {
    @Binding var selectedDate: Date
    @Binding var memoList: [Memo]

    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
        var parent:FSCalendarView
        
        init(_ parent:FSCalendarView){
            self.parent = parent
        }
        
        func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
            
            let isDotShow = parent.memoList.contains { memo in
                //カレントカーソルの日付とメモリストの日付を比較して存在したらtrueとする
                return memo.date == date ? true : false
            }
            
            //ドットの有無と数を返す
            return isDotShow ? 1 : 0
        }
        
        func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
            //選択された日付をViewに通知する
            parent.selectedDate = date
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIView(context: Context) -> FSCalendar {
        let fsCalendar = FSCalendar()
        fsCalendar.delegate = context.coordinator
        fsCalendar.dataSource = context.coordinator
        
        return fsCalendar
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {
        //nop
    }
}

//struct FSCalendarView_Previews: PreviewProvider {
//    static var previews: some View {
//        FSCalendarView(selectedDate: .constant(Date()), memoList: <#Binding<[Memo]>#>)
//    }
//}
