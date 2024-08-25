//
//  AlarmListView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI

struct AlarmListView: View {
    let alarms: [Alarm]
    
    init(alarms: [Alarm]) {
        self.alarms = alarms
        print("[arpan] in listview")
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Other")
                    .bold()
                
                Spacer()
            }
            
            Divider()
                .background(.white)
            
            List(alarms, id: \.self) { alarm in
                AlarmCell(alarm: alarm)
            }
        }
    }
}

#Preview {
    AlarmListView(alarms: [testAlarm])
}
