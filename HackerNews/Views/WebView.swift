//
//  WebView.swift
//  HackerNews
//
//  Created by Jonathan Cheth on 4/27/25.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString,
           let url = URL(string: safeString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
