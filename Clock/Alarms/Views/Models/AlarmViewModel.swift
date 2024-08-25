//
//  AlarmViewModel.swift
//  Clock
//
//  Created by Arpan Bhowmik on 25/8/24.
//

import Foundation

class AlarmViewModel: ObservableObject {
    @Published var alarms: [Alarm] = []
    
    func addAlarm(alarm: Alarm) {
        guard !alarm.hour.isEmpty, !alarm.minute.isEmpty else {
            print("[AlarmViewModel] alarm is not valid")
            return
        }
        
        alarms.append(alarm)
    }
}
