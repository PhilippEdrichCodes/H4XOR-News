//
//  WebView.swift
//  H4XOR News
//
//  Created by Philipp Edrich on 10.12.22.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:UIViewRepresentable {
    
    let urlString: String?
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> UIViewType{
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
