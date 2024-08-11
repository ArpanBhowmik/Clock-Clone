//
//  AlarmListView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 3/8/24.
//

import SwiftUI

struct AlarmListView: View {    
    var body: some View {
        VStack {
            HStack {
                Text("Other")
                    .bold()
                
                Spacer()
            }
            
            Divider()
                .background(.white)
            
            List(1..<6) { index in
                AlarmCell()
            }
        }
    }
}

#Preview {
    AlarmListView()
}
