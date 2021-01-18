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
    
    
    enum Units {
        case duration
        case wavelength
        case frequency
        case bpm
    }
    let unitList = ["Bpm", "Frequency", "Duration", "Wavelength"]
    let speedOfSound = 343.0
    
    var duration: Double {
        let duration = Double(inputParameter) ?? 0
        return duration
    }
    
    var waveLength: Double {
        let length = duration * speedOfSound
        return length
    }
    
    var frequency: Double {
        let frequency = 1/duration
        return frequency
    }
    
    var bpm: Double {
        let bpm = 60/duration
        return bpm
    }
    
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
