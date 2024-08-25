//
//  AlarmCell.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI

struct AlarmCell: View {
    let alarm: Alarm
    @State private var isOn: Bool = false
    
    init(alarm: Alarm) {
        self.alarm = alarm
        print("[AlarmCell] hour = \(alarm.hour), minutes = \(alarm.minute)")
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack(alignment: .lastTextBaseline) {
                        Text("\(alarm.hour):\(alarm.minute)")
                            .font(.system(size: 50))
                            .fontWeight(.ultraLight)
                        Text(alarm.meridiem.rawValue)
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                    }
                    
                    Text(alarm.title)
                        .fontWeight(.ultraLight)
                }
                
                Toggle("", isOn: $isOn)
            }
        }
    }
}

#Preview {
    AlarmCell(alarm: testAlarm)
}
