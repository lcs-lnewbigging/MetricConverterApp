//
//  ContentView.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            
            VStack{
                
                Image("banner2")
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                
                
                Text("Follow Each page to use the helpful converting interface!")
                    .bold()
                    .font(.title2)
                
                Divider()
                
                Group {
                    NavigationLink(destination: {
                        KgsToLbs()
                    }, label: {
                        Text("Weight Converter")
                            .bold()
                            .font(.title3)
                    })
                }
                Divider()
                
                Group {
                    NavigationLink(destination: {
                        FeetAndInchesToCm()
                    }, label: {
                        Text("Measurement Converter")
                            .bold()
                            .font(.title3)
                    })
                }
                
                Divider()
                
                Group {
                    NavigationLink(destination: {
                        MilesToKm()
                    }, label: {
                        Text("Distance Converter")
                            .bold()
                            .font(.title3)
                    })
                }
                
                Divider()
                
                Group {
                    NavigationLink(destination: {
                        GallonsToLiters()
                    }, label: {
                        Text("Liters to Gallons")
                            .bold()
                            .font(.title3)
                    })
                }
                
                
            }
        }
        //        .navigationTitle("The Converter App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        .preferredColorScheme(.dark)
    }
}
