//
//  WebView.swift
//  HackerNews
//
//  Created by Hanoudi on 1/4/21.
//  Copyright © 2021 Hanan. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

//Resuable WebView for SwiftUI
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
