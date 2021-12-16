//
//  ListView.swift
//  MetricConverterApp
//
//  Created by Luke Newbigging on 2021-12-15.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ScrollView{
            
            VStack (spacing: 30) {
                Group{
                    
                    Image("banner2")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                    
                    HStack{
                                    Text("From the devlopers at Newbigging Software Team")
                                            .bold()
                                        .font(.subheadline)
                        Image(systemName: "person.3.fill")
                    }

                    Text("Follow each page to use the helpful converting interfaces!")
                        .bold()
                        .font(.title2)
                }
                
                
                //MARK: Kilograms to Pounds and Ounces
                Group {
                    
                    NavigationLink(destination: {
                        KgsToLbs()
                    }, label: {
                        VStack{
                            Image(systemName: "suitcase.cart.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                            HStack{
                                Text("Weight Converter")
                                    .bold()
                                    .font(.title3)
                                
                                Image(systemName: "chevron.forward.2")
                                
                            }
                        }
                    })
                }
                
                //MARK: Centimeters to Feet and Inches
                Group {
                    NavigationLink(destination: {
                        FeetAndInchesToCm()
                    }, label: {
                        VStack {
                            
                            Image(systemName: "ruler.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                            HStack{
                                Text("Measurement Converter")
                                    .bold()
                                    .font(.title3)
                                
                                Image(systemName: "chevron.forward.2")
                                
                            }
                        }
                    })
                }
                
                
                //MARK: Kilometers to miles
                Group {
                    NavigationLink(destination: {
                        MilesToKm()
                    }, label: {
                        VStack{
                            Image(systemName: "map.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                            
                            
                            HStack{
                                Text("Distance Converter")
                                    .bold()
                                    .font(.title3)
                                Image(systemName: "chevron.forward.2")
                                
                            }
                            
                            
                        }
                    })
                }
                
                
                //MARK: Gallons to Liters
                Group {
                    NavigationLink(destination: {
                        GallonsToLiters()
                    }, label: {
                        VStack{
                            Image(systemName: "fuelpump.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                            
                            HStack{
                                Text("Liters to Gallons")
                                    .bold()
                                    .font(.title3)
                            
                                Image(systemName: "chevron.forward.2")
                            
                            }
                        }
                    })
                }
                
            }
        }
        //        .navigationTitle("The Converter App")
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
                .navigationBarHidden(true)
        }
        .preferredColorScheme(.dark)
    }
}
