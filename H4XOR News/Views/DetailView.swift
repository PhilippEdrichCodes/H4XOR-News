//
//  DetailView.swift
//  H4XOR News
//
//  Created by Philipp Edrich on 10.12.22.
//

import SwiftUI

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


