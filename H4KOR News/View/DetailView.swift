//
//  SwiftUIView.swift
//  H4KOR News
//
//  Created by adrian garcia on 8/18/22.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?//    let url: String? = "" //if i dont put a value i have to do it in detailView() in previews
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
