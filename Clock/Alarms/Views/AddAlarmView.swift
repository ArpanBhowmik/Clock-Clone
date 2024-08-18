//
//  AddAlarmView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 4/8/24.
//

import SwiftUI

struct AddAlarmView: View {
    @Binding var alarm: Alarm
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
                Picker("Hours", selection: $alarm.hour) {
                    ForEach(1..<13) { id in
                        Text("\(id)")
                    }
                }
                .pickerStyle(.wheel)
                
                Picker("Miniutes", selection: $alarm.minute) {
                    ForEach(0..<60) { id in
                        if id < 10 {
                            Text("0\(id)")
                        } else {
                            Text("\(id)")
                        }
                    }
                }
                .pickerStyle(.wheel)
                
                Picker("Miniutes", selection: $alarm.meridiem) {
                    Text("AM")
                    Text("PM")
                }
                .pickerStyle(WheelPickerStyle())
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
