//
//  FeetAndInchesToCm.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct FeetAndInchesToCm: View {
    //MARK: Stored Properties
    
    var Cm: Double? {
       
       guard let Cm = Double(providedCm),
             Cm > 0
       else {
       
           return nil
       
       }
   
    return Cm
   
   }
    
    var feetToCm2: Double {
        return feet2 * 30.48
    }
    
    @State var providedCm = ""
    
    @State var feet2 = 0.0
    
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
                
                Text("Use these sliders to convert your measurements into centimeters!")
                    .padding(10)
                    
                
                Divider()
                
                Group{
                //MARK: Feet to Centimeters
                Text("Feet To Centimeters Converter")
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
                Text("Inches To Centimeters Converter")
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
                    
                    
                    
                    //MARK: Text Field for custom Inputs from Users
                    
//                    SectionLabelView(text: "Centimeters To Feet", variable: "")
//
//                    TextField("Centimeters",
//                              text: $providedCm,
//                              prompt: Text ("Enter in custom Length..."))
//                      //MARK: Ternary Conditional operators
//
//                        .foregroundColor(Cm == nil ? Color.red : Color.primary )
//                        .padding(10)
//
//                    // Output: Area
//                    OutputValueView(value: feetToCm, suffix: "Centimeters")
                    
                    
//                    Text(outPut)
//                        .font(.title3)
//                        .bold()
                    
                    
                
                
                
                
                
                
                
                
                
                    
                
                
                
                
                
                
                
                
                
                
                
                
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
