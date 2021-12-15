//
//  GallonsToLiters.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct GallonsToLiters: View {
    
    @State var liters = 0.0
    
    @State var liters2 = 0.0
    
    var litersToFluidOunces: Double {
        return liters2 * 33.814
    }
    
    var litersToGallons: Double {
        return liters / 3.785
    }
    
    var body: some View {
        ScrollView{
            
            VStack{
                
                Group{
                    
                    //MARK: Liters to Gallons
                    Text("Liters to Gallons Converter")
                        .bold()
                        .font(.title3)
                    
                    Text("\(String(format: "%.1f", liters)) L")
                        .bold()
                        .padding()
                    
                    
                    Slider(value: $liters ,
                           in: 0.0...1000.0,
                           step: 0.5,
                           label: {
                        Text("Feet")
                    },
                           minimumValueLabel: {
                        Text("0 L")
                    },
                           maximumValueLabel: {
                        Text("1000 L")
                    })
                        .padding(10)
                    
                    Text("\(String(format: "%.1f", litersToGallons)) Gal")
                        .bold()
                Divider()
                
                
                }
            
                Group{
                    
                    //MARK: Liters to Fluid Ounces
                    Text("Liters to Fluid Ounces Converter")
                        .bold()
                        .font(.title3)
                    
                    Text("\(String(format: "%.1f", liters2)) L")
                        .bold()
                        .padding()
                    
                    
                    Slider(value: $liters2 ,
                           in: 0.0...1000.0,
                           step: 0.5,
                           label: {
                        Text("Feet")
                    },
                           minimumValueLabel: {
                        Text("0 L")
                    },
                           maximumValueLabel: {
                        Text("1000 L")
                    })
                        .padding(10)
                    
                    Text("\(String(format: "%.1f", litersToFluidOunces)) Oz")
                        .bold()
                Divider()
                
                
                }
            
            
            
            
            
            
            
            
            
            }
            
            
        
    }
        .navigationTitle("Liters To Gallons Converter")
    }
}
struct GallonsToLiters_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        GallonsToLiters()
    }
}
}
