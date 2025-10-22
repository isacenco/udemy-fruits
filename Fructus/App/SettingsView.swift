//
//  SettingsView.swift
//  Fructus
//
//  Created by Ghenadie Isacenco on 22/10/2025.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many  essential nutrients, including potasium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        } //: HSTACL
                    } //: BOX
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    
                } //: VSTACK
                .navigationBarTitle(
                    Text("Settings"),
                    displayMode: .large
                )
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
                .padding()
            } //: SCROLL
            
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
