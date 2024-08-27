//
//  AlarmViewModel.swift
//  Clock
//
//  Created by Arpan Bhowmik on 25/8/24.
//

import Foundation

class AlarmViewModel: ObservableObject {
    @Published var alarms: [Alarm] = []
    let alarmsKey: String = "alarms"
    
    func addAlarm(alarm: Alarm) {
        guard !alarm.hour.isEmpty, !alarm.minute.isEmpty else {
            print("[AlarmViewModel] alarm is not valid")
            return
        }
        
        alarms.append(alarm)
        saveAlarmsToUserDefaults()
    }
    
    func saveAlarmsToUserDefaults() {
        if let data = try? JSONEncoder().encode(alarms) {
            UserDefaults.standard.set(data, forKey: alarmsKey)
        }
    }
    
    func loadAlarmsFromUserDefaults() {
        if let data = UserDefaults.standard.object(forKey: alarmsKey) as? Data {
            let contents = try? JSONDecoder().decode([Alarm].self, from: data)
            alarms = contents ?? []
        }
    }
}
