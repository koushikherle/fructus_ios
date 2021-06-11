//
//  ContentView.swift
//  Frucuts
//
//  Created by Koushik Herle on 08/06/21.
//

import SwiftUI

struct ContentView: View {
    
    //Mark - Properties
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //Mark - Body
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                       
                    FruitRowView(fruit: item)
                        .padding(.vertical , 4)
                    }
                }
            }
            
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSetting = true
                }){
                    Image(systemName: "slider.horizontal.3")
                }//Button
                .sheet(isPresented: $isShowingSetting){
                    SettingsView()
                }
            )
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    //Mark - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
