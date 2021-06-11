//
//  SettingsLabelView.swift
//  Frucuts
//
//  Created by Koushik Herle on 09/06/21.
//

import SwiftUI


struct SettingsLabelView: View {
    //Mark - Properties
    var labelText: String
    var labelImage: String
    


    //Mark - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

    //Mark - preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frucuts", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
