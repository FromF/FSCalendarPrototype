//
//  FSCalendarPrototypeApp.swift
//  FSCalendarPrototype
//
//  Created by 藤治仁 on 2021/09/22.
//

import SwiftUI

@main
struct FSCalendarPrototypeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CalendarView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
