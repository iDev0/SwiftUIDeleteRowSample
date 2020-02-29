//
//  ContentView.swift
//  DeleteRowSample
//
//  Created by iDev0 on 2020/02/28.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var appleDevices = ["iMac", "iPhone", "iPad", "appleWatch"]
    
    
    var body: some View {
        
        NavigationView {
            List {
                
                ForEach(appleDevices, id: \.self) { device in
                    Text(device)
                }
                .onDelete(perform: self.deleteRow)
                
            }.navigationBarTitle(Text("Apple Devices"))
        }
    }
    
    
    private func deleteRow(at indexSet: IndexSet) {
         self.appleDevices.remove(atOffsets: indexSet)
     }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
