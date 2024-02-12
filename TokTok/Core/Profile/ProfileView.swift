//
//  ProfileView.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 12/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    var items:[String] = ["Following", "Followers", "Likes"]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemGray5))
                    .padding(.top)
                Text("@username")
                    .fontWeight(.semibold)
                HStack(spacing: 40) {
                    ForEach (items, id: \.self) { item in
                        VStack {
                            Text("8")
                                .bold()
                                .font(.callout)
                            Text(item)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding(.vertical)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit Profile")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .frame(maxWidth:.infinity)
                        .padding(.horizontal)
                })
                .buttonStyle(.bordered)
                .padding(.horizontal)
                .tint(Color(.systemGray2))
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign Out")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                })
            }
        }
    }
}

#Preview {
    ProfileView()
}
