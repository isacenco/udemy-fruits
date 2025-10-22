//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        } //: HSTACK
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
        
}
