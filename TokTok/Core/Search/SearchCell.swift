//
//  SearchCell.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 11/02/2024.
//

import SwiftUI

struct SearchCell: View {
    
    let user: Int
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 48,height: 48)
                .foregroundColor(Color(.systemGray4))
            VStack(alignment: .leading) {
                Text("username \(user)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("\(user)")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding(.horizontal)        
    }
}

#Preview {
    SearchCell(user:2)
}
