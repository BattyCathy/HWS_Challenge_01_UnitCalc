//
//  ContentView.swift
//  HWS_Challenge_01_UnitCalc
//
//  Created by Guy on 1/18/21.
//

import SwiftUI


struct ContentView: View {
    
    @State var inputUnit = 0
    @State var outputUnit = 0
    @State var inputParameter = ""
    var outputParameter = 0
    
    
    enum InputUnitTypes {
        case duration
        case waveLength
        case frequency
        case bpm
    }
    
    enum OutputUnitTypes {
        case duration
        case waveLength
        case frequency
        case bpm
    }
    
    
    func convertToDuration(unit: InputUnitTypes.($inputUnit)) -> Double {
            switch unit {
                case .duration:
                    let rosettaDuration = Double(inputParameter) ?? 0
                    return rosettaDuration
                case .waveLength:
                    let rosettaDuration = (Double(inputParameter) ?? 0) / speedOfSound
                    return rosettaDuration
                case .frequency:
                    let rosettaDuration = 1 / (Double(inputParameter) ?? 0)
                    return rosettaDuration
                case .bpm:
                    let rosettaDuration = 1 / ((Double(inputParameter) ?? 0) / 60)
                    return rosettaDuration
        }
    }
    
  
    func convertFromDuration(unit: OutputUnitTypes) -> String {
        switch unit {
        case .duration:
            let duration = rosettaDuration
            return String(duration)
            
        case .waveLength:
            let waveLength = rosettaDuration * speedOfSound
            return String(waveLength)
        case .frequency:
            let frequency = rosettaDuration
        case .bpm:
            <#code#>
        }
    }
    let unitList = ["Bpm", "Frequency", "Duration", "Wavelength"]
    let speedOfSound = 343.0
    
   

    

    
    var body: some View {
        Form {
            Section {
            TextField("Input Parameter", text: $inputParameter)
            }
            Section(header: Text("Input Unit")) {
                Picker("Input Unit", selection: $inputUnit) {
                    ForEach(0 ..< unitList.count) {
                        Text("\(self.unitList[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Output Unit")) {
                Picker("Output Unit", selection: $outputUnit) {
                    ForEach(0 ..< unitList.count) {
                        Text("\(self.unitList[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
