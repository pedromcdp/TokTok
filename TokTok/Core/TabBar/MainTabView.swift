//
//  MainTabView.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 11/02/2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill": "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(0)
            SearchView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill":"person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            Text("Add")
                .tabItem {
                    VStack{
                        Image(systemName: "plus.rectangle.fill")
                    }
                }
                .onAppear{selectedTab = 2}
                .tag(2)
            NotificationsView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 3 ?"bubble.middle.bottom.fill" : "bubble.middle.bottom")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            Text("Profile")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
