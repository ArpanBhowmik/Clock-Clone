//
//  AlarmsView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button("Edit") {
                    
                }
                .foregroundColor(.orange)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.orange)
                })
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
            
            AlarmListView()
                        
            Spacer()
        }
    }
}

#Preview {
    AlarmsView()
}
