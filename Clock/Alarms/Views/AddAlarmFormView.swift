//
//  AddAlarmFormView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 9/8/24.
//

import SwiftUI

struct AddAlarmFormView: View {
    @State var notifyMeAbout: Bool = false
    
    var body: some View {
        Form {
            Picker("Repeat", selection: $notifyMeAbout) {
                Text("Never")
            }
            .bold()
            .pickerStyle(.navigationLink)
            
            HStack {
                Text("Label")
            }
        }
    }
}

#Preview {
    AddAlarmFormView()
}
