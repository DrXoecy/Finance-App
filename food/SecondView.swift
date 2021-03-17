//
//  SecondView.swift
//  food
//
//  Created by Archie Richardson on 01/02/2021.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            TopNavBarView()
            
            IncomeOutcomeView()
            
            TotalView()
            
            TimeView()

            
            Spacer()
        }
        .padding(.horizontal, 25)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .preferredColorScheme(.dark)
    }
}

struct TimeView: View {
    var body: some View {
        HStack {
            Text("Day")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("Week")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("Month")
                .fontWeight(.bold)
            
            Spacer()
            
            Text("Year")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
            
        }
        .padding(.horizontal, 25)
    }
}

struct TotalView: View {
    var body: some View {
        HStack {
            VStack (alignment: .center, spacing: 15) {
                Text("Saved This Month")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                
                Text("£25,999.00")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
        .frame(width: 375, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct IncomeOutcomeView: View {
    var body: some View {
        HStack {
            Text("Income")
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(Color(.white))
                .cornerRadius(20.0)
            
            Spacer()
            
            Text("Outcome")
                .frame(width: 150, height: 50)
        }
        .frame(width: 325, height: 75)
        .padding(.horizontal, 25)
        .background(Color("Color-1"))
        .cornerRadius(20.0)
    }
}
