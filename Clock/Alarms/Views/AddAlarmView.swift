//
//  AddAlarmView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 4/8/24.
//

import SwiftUI

struct AddAlarmView: View {
    @Binding var alarm: Alarm
    
    @State var hour: String = "1"
    @State var minute: String = ""
    @State var meridiem: Meridiem = .am
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.orange)
                }
                
                Spacer()
                
                Text("Add Alarm")
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("Save")
                        .foregroundColor(.orange)
                }
            }
            .padding()
            
            HStack {
                Picker("Hours", selection: $hour) {
                    ForEach(1..<13) { id in
                        Text("\(id)")
                            .tag("\(id)")
                    }
                }
                .pickerStyle(.wheel)
                .onChange(of: hour) { tag in
                    alarm.hour = tag
                }
                
                Picker("Miniutes", selection: $minute) {
                    ForEach(0..<60) { id in
                        if id < 10 {
                            Text("0\(id)")
                                .tag("0\(id)")
                        } else {
                            Text("\(id)")
                                .tag("\(id)")
                        }
                    }
                }
                .pickerStyle(.wheel)
                .onChange(of: minute) { tag in
                    alarm.minute = tag
                }
                
                Picker("Meridiem", selection: $meridiem) {
                    Text("AM").tag(Meridiem.am)
                    Text("PM").tag(Meridiem.pm)
                }
                .pickerStyle(.wheel)
                .onChange(of: meridiem) { tag in
                    alarm.meridiem = tag
                }
            }
            .padding()
            
            AddAlarmFormView()
                        
            Spacer()
        }
    }
}

#Preview {
    AddAlarmView(alarm: .constant(testAlarm))
}
