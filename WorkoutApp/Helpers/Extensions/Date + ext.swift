//
//  Date + ext.swift
//  WorkoutApp
//
//  Created by Evgeniy Fakhretdinov on 09.03.2024.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        var calendar = Calendar.current
        // Устанавливаем начало недели на понедельник
        calendar.firstWeekday = 2
        return calendar
    }
    
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 0, to: firstDay) ?? self
    }
    
    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
