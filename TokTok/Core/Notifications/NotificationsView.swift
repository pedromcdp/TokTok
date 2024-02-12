//
//  NotificationView.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 11/02/2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "bubble.middle.bottom")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                Text("No notifications to show")
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundStyle(.secondary)
            }
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationsView()
}
