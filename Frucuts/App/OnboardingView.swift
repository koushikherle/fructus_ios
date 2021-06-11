//
//  OnboardingView.swift
//  Frucuts
//
//  Created by Koushik Herle on 08/06/21.
//

import SwiftUI

struct OnboardingView: View {
    // Mark - Properties
    
    var fruits : [Fruit] = fruitsData

    // Mark - Body
    
   
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                
                FruitCardView(fruit: item)
            }// LOOP
        }// TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}

    // Mark - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
