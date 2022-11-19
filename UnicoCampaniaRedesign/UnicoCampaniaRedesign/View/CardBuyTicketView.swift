//
//  CardBuyTicketView.swift
//  UnicoCampaniaRedesign
//
//  Created by Gilda on 17/11/22.
//

import SwiftUI

struct CardBuyTicketView: View {
    
    let card1Icon = "cart"
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            if #available(iOS 16.0, *) {
                Rectangle().fill(.green.gradient)
                    .cornerRadius(20)
            } else {
                Rectangle()
                    .foregroundColor(.green)
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: card1Icon)
                        .padding(.trailing, 4)
                    Text("Buy a Ticket")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Text("Buy a new ticket from a company or based on your city.")
                    .font(.body)
                    .opacity(0.9)
                    .padding(.top, 4)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct CardBuyTicketView_Previews: PreviewProvider {
    static var previews: some View {
        CardBuyTicketView()
    }
}
