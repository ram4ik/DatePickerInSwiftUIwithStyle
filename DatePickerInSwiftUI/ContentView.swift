//
//  ContentView.swift
//  DatePickerInSwiftUI
//
//  Created by Ramill Ibragimov on 22.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var birthDay = Date()
    @State private var meetingDay = Date()
    @State private var time = Date()
    @State private var meetingWithTime = Date()
    @State private var simple = Date()
    
    var body: some View {
        VStack {
            Form {
                DatePicker("Birthday", selection: $birthDay, in: ...Date(), displayedComponents: .date)
                DatePicker("Meeting", selection: $meetingDay, in: Date()..., displayedComponents: .date)
                DatePicker("Time", selection: $time, in: Date()..., displayedComponents: .hourAndMinute)
            }
            Form {
                DatePicker("Meeting & Time", selection: $meetingWithTime, in: Date()...)
            }
            Form {
                DatePicker("", selection: $simple)
                    .datePickerStyle(WheelDatePickerStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
