//
//  SectionLabelView.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-15.
//

import SwiftUI

struct SectionLabelView: View {
    
        let text: String
        let variable: String
        
        // MARK: Computed properties
        var body: some View {
            HStack {

                Text(text)
                    .font(.title2)
                    .bold()

                Text(variable)
                    .font(.custom("Times New Roman", size: 24, relativeTo: .title2))
                    .italic()

                Spacer()

            }
        }
    }

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(text: "Feet to Centimeters",
                         variable: "Cm")
    }
}
