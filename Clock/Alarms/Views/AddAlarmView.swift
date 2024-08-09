//
//  AddAlarmView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 4/8/24.
//

import SwiftUI

struct AddAlarmView: View {
    @State private var selected: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Text("Cancel")
                        .foregroundColor(.orange)
                }
                
                Spacer()
                
                Text("Add Alarm")
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Edit")
                        .foregroundColor(.orange)
                }
            }
            .padding()
                        
            HStack {
                Picker("Hours", selection: $selected) {
                    ForEach(1..<13) {id in
                        Text("\(id)")
                    }
                }
                .pickerStyle(.wheel)
                .clipShape(.rect.offset(x: -16))
                .padding(.trailing, -16)
                
                Picker("Miniutes", selection: $selected) {
                    ForEach(0..<60) {id in
                        Text("\(id)")
                    }
                }
                .pickerStyle(.wheel)
                .clipShape(.rect.offset(x: 16))
                .padding(.leading, -16)
                
                Picker("Miniutes", selection: $selected) {
                    Text("AM")
                    Text("PM")
                }
                .pickerStyle(WheelPickerStyle())
            }
            .padding()
            
            Spacer()
        }
        
    }
}

#Preview {
    AddAlarmView()
}
