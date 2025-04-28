//
//  ContentView.swift
//  HackerNews
//
//  Created by Jonathan Cheth on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {
                post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }

            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }

    }
}

#Preview {
    ContentView()
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Konichiwa"),
//    Post(id: "1", title: "Sou Sdey")
//]
