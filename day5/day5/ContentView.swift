//
//  ContentView.swift
//  day5
//
//  Created by Amnah Ali on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weight = ""
    @State var BMI = 0.0
    @State var status = ""
    
    
    var body: some View {
        
        VStack{
            Text("ادخل الطول و الوزن")
            
            TextField(" ادخل الطول ", text: $height)
            TextField(" ادخل الوزن ", text: $weight)
            
            Button(action: {
                BMI = calculateBMI(height: Double(height)!, weight: Double(weight)!)
                status = checkStatus(BMI: BMI)
            },
                   label: {
                Text ("احسب")
                .padding()
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(25)
            })
         //   BMI =
            Text("BMI = \(BMI) \n الحالة = \(status)")
            
            
        }
        .multilineTextAlignment(.center)
            .font(.largeTitle)
        
    }
    
    func calculateBMI(height: Double, weight: Double) -> Double{
        
        return weight/(height*height)
        
    }
        func checkStatus(BMI:Double) -> String{
            
            if BMI <= 20 {
                return"ضعيف"
            }
            
            else if BMI <= 25{
                return"جيد"
            }
            
            else{
                return"سمين"
            }
            
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
