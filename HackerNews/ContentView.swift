//
//  ContentView.swift
//  HackerNews
//
//  Created by Jonathan Cheth on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) {
                post in
                    Text(post.title)
            }
            .navigationTitle("Hacker News")
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

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Konichiwa"),
    Post(id: "1", title: "Sou Sdey")
]
