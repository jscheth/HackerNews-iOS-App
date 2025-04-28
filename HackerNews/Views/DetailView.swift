//
//  DetailView.swift
//  HackerNews
//
//  Created by Jonathan Cheth on 4/27/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


