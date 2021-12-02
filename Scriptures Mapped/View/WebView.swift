//
//  WebView.swift
//  Scriptures Mapped
//
//  Created by Matthew Porter on 12/1/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let html: String?
    let request: URLRequest?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let html = html {
            uiView.loadHTMLString(html, baseURL: nil)
        } else if let request = request {
            uiView.load(request)
        }
        
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(html: "<h1>Hello Wolrd</h1>", request: nil)
    }
}
