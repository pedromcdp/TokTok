//
//  NotificationCell.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 12/02/2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            HStack {
                Text("username")
                    .fontWeight(.semibold) +
                Text(" action.") +
                Text(" 3d")
                    .foregroundStyle(.gray)
                    .font(.caption)
            }
            .font(.footnote)
            Spacer()
            RoundedRectangle(cornerRadius: 6)
                .fill(.cyan)
                .frame(width: 48, height: 48)
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
