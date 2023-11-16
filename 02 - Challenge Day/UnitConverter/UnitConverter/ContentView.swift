//
//  ContentView.swift
//  UnitConverter
//
//  Created by Jusa Annevirta on 15.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue: Double = 0
    @State private var inputUnit: UnitVolume = .milliliters
    @State private var outputUnit: UnitVolume = .liters
    @FocusState private var inputFocused: Bool
    
    
    let units: [UnitVolume] = [
        .milliliters,
        .liters,
        .cups,
        .pints,
        .gallons
    ]
    
    var outputValue: Double {
        let input = Measurement(value: inputValue, unit: inputUnit)
        let output = input.converted(to: outputUnit)
        
        return round(output.value * 100)/100.0
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("From") {
                    TextField("input", value: $inputValue, format: .number )
                        .keyboardType(.decimalPad)
                        .focused($inputFocused)

                    Picker("Unit", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.symbol)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("To") {
                    Text(outputValue, format: .number)
                    
                    Picker("Unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.symbol)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Volume Converter")
            .toolbar {
                if inputFocused {
                    Button("Done") {
                        inputFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
