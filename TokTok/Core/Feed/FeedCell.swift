//
//  FeedCell.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 11/02/2024.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.pink)
                .containerRelativeFrame([.horizontal, .vertical])
            .overlay{
                Text("Post: \(post)")
                    .foregroundStyle(.white)
            }
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment:.leading) {
                        Text("username")
                            .fontWeight(.semibold)
                        Text("muito texto mesmo")
                    }
                    .font(.subheadline)
                .foregroundStyle(.white)
                    Spacer()
                    VStack(spacing: 28){
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        Button(action: {
                            // TODO:
                        }, label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        })
                        Button(action: {
                            // TODO: 
                        }, label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("5")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        })
                        Button(action: {
                            // TODO:
                        }, label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(.white)
                        })
                        Button(action: {
                            // TODO:
                        }, label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        })
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
