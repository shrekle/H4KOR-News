//
//  WebView.swift
//  H4KOR News
//
//  Created by adrian garcia on 8/18/22.
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
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    typealias UIViewType = WKWebView //need to use this protocol first and add the type WkWebView cuz that the type we need to use here
}
