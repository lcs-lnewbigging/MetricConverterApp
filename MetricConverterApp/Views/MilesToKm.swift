//
//  MilesToKm.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct MilesToKm: View {
    
    @State var kilometers = 0.0
    
    var kilometersToMiles: Double {
        return kilometers / 1.60
    }
    
    var body: some View {
        ScrollView{
            
            VStack{
                
                Group{
                    //MARK: Kliograms to Pounds
                    Text("Kliometers To Miles Converter")
                        .bold()
                        .font(.title3)
                    
                    Text("\(String(format: "%.1f", kilometers)) Km")
                        .bold()
                        .padding()
                    
                    
                    Slider(value: $kilometers ,
                           in: 0.0...1000.0,
                           step: 0.5,
                           label: {
                        Text("Feet")
                    },
                           minimumValueLabel: {
                        Text("0 Km")
                    },
                           maximumValueLabel: {
                        Text("1000 Km")
                    })
                        .padding(10)
                    
                    Text("\(String(format: "%.1f", kilometersToMiles)) Mi")
                        .bold()
                }
                Divider()
           
            }
            
            
        }
        .navigationTitle("Distace Converter")
    }
}
struct MilesToKm_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MilesToKm()
        }
    }
}
