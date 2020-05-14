//
//  Webview.swift
//  DRM
//
//  Created by Pentacode on 14/05/20.
//  Copyright © 2020 Pentacode.id. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url : String
    
    func makeUIView(context: UIViewRepresentableContext<Webview>) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url : url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
         
    }
    
}
