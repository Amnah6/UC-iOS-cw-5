//
//  ContentView.swift
//  day5.2
//
//  Created by Amnah Ali on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var imgName = " "
    var emoji = ["☺️","😍","🥹","🥳","🤓","😒","😫","🥺","😳","😡","😱","🫣","🤫"]
    
    var body: some View {
        
        Text("اختار الايموجي الي يعبر عنك اليوم")
            
        ScrollView(.horizontal){
            
            HStack{
                ForEach(emoji, id: \.self) { color in
                  Text(color)

               
            
            
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
}
