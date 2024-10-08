//
//  AlarmsView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI
import UserNotifications

struct AlarmsView: View {
    @State private var isPresented: Bool = false
    @State var newAlarm: Alarm = emptyAlarm
    @ObservedObject var alarmViewModel = AlarmViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button("Edit") {
                    
                }
                .foregroundColor(.orange)
                
                Spacer()
                
                Button(action: {
                    scheduleAlarm()
                    isPresented.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.orange)
                })
                .sheet(isPresented: $isPresented, onDismiss: {
                    print("[AlarmsView] in ondismiss, newAlarm = \(newAlarm)")
                    alarmViewModel.addAlarm(alarm: newAlarm)
                }) {
                    AddAlarmView(alarm: $newAlarm)
                }
            }
            .padding(4)
            
            HStack {
                Text("Alarms")
                    .font(.title)
                    .bold()
                
                Spacer()
            }
            .padding(4)
            
            HStack {
                VStack {
                    Label("Sleep | Wake Up", systemImage: "bed.double.fill")
                        .font(.title2)
                        .bold()
                }
                
                Spacer()
            }
            .padding(4)
            
            Divider()
                .background(.white)
                .padding(4)
            
            HStack {
                Text("No Alarm")
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("SET UP")
                        .foregroundColor(.orange)
                        .bold()
                })
                .padding(.horizontal, 5)
                .background(.gray)
                .cornerRadius(10)
            }
            .padding(4)
            
            Divider()
                .background(.white)
                .padding(4)
            
            AlarmListView(alarms: alarmViewModel.alarms)
            
            Spacer()
        }
        .onAppear(){
            // 1 checking for permission
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                if success {
                    print("Permission approved!")
                } else if let error = error {
                    print(error.localizedDescription)
                }
            }
            
            alarmViewModel.loadAlarmsFromUserDefaults()
        }
    }
    
    private func scheduleAlarm() {
        let content = UNMutableNotificationContent()
        content.title = "Notification title."
        content.subtitle = "Notification content."
        content.sound = .defaultRingtone
        
        // show this notification five seconds from now
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        
        // choose a random identifier
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        // add our notification request
        UNUserNotificationCenter.current().add(request)
    }
}

#Preview {
    AlarmsView()
}
