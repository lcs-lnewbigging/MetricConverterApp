//
//  OutputValueView.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-15.
//

import SwiftUI

struct OutputValueView: View {
    
    
        // MARK: Stored properties
        let value: Double?
        let suffix: String
        
        
    // MARK: Computed properties
      var outPut: String {
            if let value = value {
                
                let formattedValue = String(format: "%.1f", value)
               
                return "\(formattedValue) \(suffix)"
                
            } else {
                return "Cannot currently be computed."
            }
            
        }
        
        
        var body: some View {
            Text(outPut)
                .font(.title3)
                .bold()
        }
    }
    
    
    struct OutputValueView_Previews: PreviewProvider {
        static var previews: some View {
            OutputValueView(value: 12131.121,
                            suffix: "Cm")
        }
    }

