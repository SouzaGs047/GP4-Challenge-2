// se você ta feliz, me ensina como faz pra ser

//
//  CountryCardView.swift
//  GP4-Challenge-2
//
//  Created by JOSE ELIAS GOMES CAMARGO on 28/08/24.
//

import SwiftUI

struct CountryCard: View {
    let country: String
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack{
                Image(country)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    .shadow(radius: 0.3)
                Text(country)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("supportColor"))
                    .offset(x: 0, y: -5)
            }
        }.frame(width: 150, height: 130)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 15.0))
            .shadow(color: .black.opacity(0.03), radius: 3, x: 0, y: 5)
            .shadow(radius: 0.5)
    }
}

#Preview {
    CountryCard(country: "Japanese")
}


