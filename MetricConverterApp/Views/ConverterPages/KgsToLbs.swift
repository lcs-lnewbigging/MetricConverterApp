//
//  KgsToLbs.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct KgsToLbs: View {
    //MARK: Stored Properties
    @State var kliograms = 0.0
    
    @State var kilograms2 = 0.0
    
    @State var Ounces = 0.0
    
    
    //MARK: Computed Properties
    var KliosToLbs: Double {
        return kliograms * 2.2
    }
    
    var KliosToOunces: Double{
        return kilograms2 * 35.274
    }
    
    var body: some View {
        ScrollView{
            
            VStack{
                
                Text("Use these sliders to convert your weights into pounds and ounces!")
                    .padding(10)
                
                
                Divider()
                
                Group{
                    //MARK: Kliograms to Pounds
                    Text("Kliograms To Pounds Converter")
                        .bold()
                        .font(.title3)
                    
                    Text("\(String(format: "%.1f", kliograms)) Kg")
                        .bold()
                        .padding()
                    
                    
                    Slider(value: $kliograms ,
                           in: 0.0...1000.0,
                           step: 0.5,
                           label: {
                        Text("Feet")
                    },
                           minimumValueLabel: {
                        Text("0 Kg")
                    },
                           maximumValueLabel: {
                        Text("1000 Kg")
                    })
                        .padding(10)
                    
                    Text("\(String(format: "%.1f", KliosToLbs)) Lbs")
                        .bold()
                }
                Divider()
                
                Group{
                    //MARK: Kliograms to Pounds
                    Text("Kliograms To Ounces Converter")
                        .bold()
                        .font(.title3)
                    
                    Text("\(String(format: "%.1f", kilograms2)) Kg")
                        .bold()
                        .padding()
                    
                    
                    Slider(value: $kilograms2 ,
                           in: 0.0...1000.0,
                           step: 0.5,
                           label: {
                        Text("Feet")
                    },
                           minimumValueLabel: {
                        Text("0 Kg")
                    },
                           maximumValueLabel: {
                        Text("1000 Kg")
                    })
                        .padding(10)
                    
                    Text("\(String(format: "%.1f", KliosToOunces)) Oz")
                        .bold()
                }
                Divider()
                
                
                
            }
            
        }
        .navigationTitle("Weight Converter")
    }
}

struct KgsToLbs_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            KgsToLbs()
        }
    }
}




//struct KgsToLbs_Previews_2: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}


