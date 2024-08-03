//
//  AlarmCell.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI

struct AlarmCell: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack(alignment: .lastTextBaseline) {
                    Text("5:30")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                    Text("AM")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                }
                
                Text("Alarm")
                    .fontWeight(.ultraLight)
                
                Divider()
                    .background(.white)
            }
            
            Toggle("", isOn: $isOn)
        }
    }
}

#Preview {
    AlarmCell()
}
