//
//  ContentView.swift
//  food
//
//  Created by Archie Richardson on 31/1/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            TopNavBarView()
            
            VStack (alignment: .leading) {
                Text("Terry")
                    .font(.title)
                    .fontWeight(.medium)
                
                Text("Welcome Back!")
                    .font(.title2)
                
            }
            .padding(.horizontal, 25)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    CardView(card_num: "4562 1122 4595 7852")
                    CardView(card_num: "1122 4652 5885 3583")
                    AddCarView()
                }
            }.padding(.vertical)
            
            HStack () {
                VStack (alignment: .leading) {
                    Text("Total Spent")
                        .fontWeight(.semibold)
                    
                    Text("£1,520.00")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                Spacer()
                
                Text("See more")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        
                    }
            }
            .padding(.horizontal, 25)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    RecentView(item: "Food", price: "£300.00", image: #imageLiteral(resourceName: "diet.png"))
                    RecentView(item: "Car Repair", price: "£125.00", image: #imageLiteral(resourceName: "car.png"))
                }
                .padding(.vertical)
            }
            
            HStack {
                VStack {
                    BrakeDownView(image: #imageLiteral(resourceName: "diet"), item: "Grocery", time: "Just Now", price: "£45")
                    BrakeDownView(image: #imageLiteral(resourceName: "gift"), item: "Present", time: "1, February", price: "£125")
                    BrakeDownView(image: #imageLiteral(resourceName: "car.png"), item: "Car Repair", time: "23, September", price: "£200")
                    BrakeDownView(image: #imageLiteral(resourceName: "diet"), item: "Food", time: "2, August", price: "£60")
                }
            }
            .padding(.horizontal, 25)
            
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}





struct TopNavBarView: View {
    var body: some View {
        HStack {
            Image(uiImage: #imageLiteral(resourceName: "menu"))
            
            Spacer()
            
            Image(uiImage: #imageLiteral(resourceName: "terry"))
                .clipShape(Circle())
                .onTapGesture {
                    
                }
        }
        .padding(.horizontal, 25)
    }
}

struct CardView: View {
    let card_num: String
    var body: some View {
        HStack (alignment: .top, spacing: 30) {
            ZStack (alignment: .leading) {
                VStack (alignment: .leading, spacing: 8) {
                    Image(systemName: "airport.extreme")
                        .onTapGesture {
                            
                        }
                    
                    Text(card_num)
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("CARD HOLDER")
                                .font(.caption2)
                                .fontWeight(.semibold)
                            Text("Terry")
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                        
                        Image(uiImage: #imageLiteral(resourceName: "mc_symbol_opt_45_1x"))
                        
                    }
                }
                .frame(width: 247, height: 147)
                .padding()
                .background(Color("Color-1"))
                .cornerRadius(20.0)
            }
        }
        .padding(.horizontal , 25)
    }
}

struct AddCarView: View {
    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            ZStack (alignment: .leading) {
                VStack (alignment: .leading, spacing: 8) {
                    Image(systemName: "plus")
                        .font(.system(size: 25.0))
                        .onTapGesture {
                            
                        }
                }
                .frame(width: 30, height: 147)
                .padding()
                .background(Color("Color-1"))
                .cornerRadius(20.0)
            }
        }
        .padding(.horizontal , 25)
    }
}

struct RecentView: View {
    let item: String
    let price: String
    let image: UIImage
    var body: some View {
        HStack (alignment: .top, spacing: 15 ) {
            ZStack (alignment: .leading) {
                VStack (alignment: .leading, spacing: 8) {
                    HStack () {
                        Image(uiImage: image)
                        
                        Spacer()
                        
                        VStack (alignment: .leading) {
                            Text(item)
                                .fontWeight(.semibold)
                            
                            Text(price)
                                .fontWeight(.bold)
                        }
                    }
                }
                .frame(width: 225, height: 50)
                .padding()
                .background(Color("Color-1"))
                .cornerRadius(20.0)
            }
        }
        .padding(.horizontal , 25)
    }
}

struct BrakeDownView: View {
    let image: UIImage
    let item: String
    let time: String
    let price: String
    var body: some View {
        HStack {
            HStack {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40.0, height:40.0)
            }
            .frame(width: 70.0, height: 70.0)
            .background(Color("Color-1"))
            .cornerRadius(20.0)
            
            
            VStack (alignment: .leading) {
                Text(item)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(time)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(price)
                .foregroundColor(.gray)
        }
    }
}
