//
//  AddAlarmFormView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 9/8/24.
//

import SwiftUI

struct AddAlarmFormView: View {
    @State private var labelText: String = ""
    @State private var isSnoozed: Bool = false
    
    var body: some View {
        Form {
            HStack {
                Text("Repeat")
                
                Spacer()
                
                Text("Never")
                    .foregroundColor(.secondary)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                })
            }
            
            HStack {
                Text("Label")
                
                Spacer()
                
                TextField("Alarm", text: $labelText)
                    .multilineTextAlignment(.trailing)
            }
            
            HStack {
                Text("Sound")
                
                Spacer()
                
                Text("Radial")
                    .foregroundColor(.secondary)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                })
            }
            
            HStack {
                Text("Snooze")
                
                Spacer()
                
                Toggle("", isOn: $isSnoozed)
            }
        }
    }
}

#Preview {
    AddAlarmFormView()
}
