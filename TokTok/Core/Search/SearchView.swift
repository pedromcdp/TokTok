//
//  SearchView.swift
//  TokTok
//
//  Created by Pedro Miguel Pereira on 11/02/2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack{
            ScrollView(){
                LazyVStack (spacing: 16){
                    ForEach(0 ..< 20) { person in
                        SearchCell(user:person)
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)            
        }
    }
}

#Preview {
    SearchView()
}
