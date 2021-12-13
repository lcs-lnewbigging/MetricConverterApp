//
//  FeetAndInchesToCm.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct FeetAndInchesToCm: View {
    //MARK: Stored Properties
    
    @State var feet = 0.0
    
    @State var inches = 0.0
    
    //MARK: Computed Properties
    var feetToCm: Double {
        return feet * 30.48
    }
    
    var inchesToCm: Double{
        return inches * 2.54
    }
    
    var body: some View {
        ScrollView{
            
            VStack{
                Text("Use These Sliders to convert your measurements into Centimeters")
                    .padding(10)
                
                Divider()
                
                Group{
                //MARK: Feet to Centimeters
                Text("Ft To Cm Converter")
                    .bold()
                    .font(.title3)
                
                Text("\(String(format: "%.1f", feet)) Ft")
                    .bold()
                    .padding()
                
                Slider(value: $feet ,
                       in: 0.0...1000.0,
                       step: 0.5,
                       label: {
                    Text("Feet")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("1000")
                })
                    .padding(10)
                
                Text("\(String(format: "%.1f", feetToCm)) Cm")
                    .bold()
                
                Divider()
                }
                Group{
                //MARK: Inches to Centimeters
                Text("In To Cm Converter")
                    .bold()
                    .font(.title3)
                    .padding(10)
                
                
                Text("\(String(format: "%.1f", inches)) In")
                    .bold()
                    .padding()
                
                Slider(value: $inches ,
                       in: 0.0...1000.0,
                       step: 0.5,
                       label: {
                    Text("Feet")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("1000")
                })
                        .padding(10)
                
                
                Text("\(String(format: "%.1f", inchesToCm)) Cm")
                    .bold()
                    .padding()
                    
                    Divider()
                
                }
            }
        }
        .navigationTitle("Measurement Converter")
    }
}




struct FeetAndInchesToCm_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FeetAndInchesToCm()
        }
    }
}
