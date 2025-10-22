//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://" + linkDestination!)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}

// MARK: - PREVIEW
#Preview("Content", traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", content: "Ghenadie Isacenco")
        .padding()
}
#Preview("URL", traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", linkLabel: "Google", linkDestination: "www.google.com")
        .padding()
        .preferredColorScheme(.dark)
}

