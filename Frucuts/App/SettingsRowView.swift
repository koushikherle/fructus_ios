//
//  SettingsRowView.swift
//  Frucuts
//
//  Created by Koushik Herle on 09/06/21.
//

import SwiftUI

struct SettingsRowView: View {
    //Mark - Properties
    
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    
    //Mark - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")! )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}
    //Mark - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Develooper", content: "Koushik Herale S")
                .previewLayout(.fixed(width: 375,height: 60))
                .padding()
            SettingsRowView(name: "Website" , linkLabel: "SwiftUI Masterclass", linkDestination: "www.google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375,height: 60))
                .padding()
        }
        
    }
}
