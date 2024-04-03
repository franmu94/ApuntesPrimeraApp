//
//  Components1View.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 2/4/24.
//

import SwiftUI

struct Arbol: Identifiable {
    var id = UUID()
    var name: String
    var children: [Arbol]?
    
    
}

enum OpcionesMenu: String, CaseIterable, Identifiable {
    case file =  "Archivo"
    case edit = "Editar"
    case window =  "Ventana"
    case product = "Producto"
    case find = "Buscar"
    
    var id :Self { self }
}


struct Components1View: View {
    
    let arbol = Arbol(name: "Hoja 1", children: [
    Arbol(name: "Hoja 1.1"),
    Arbol(name: "Hoja 1.2", children: [
        Arbol(name: "Hoja 1.2.1"),
        Arbol(name: "Hoja 1.2.2")]),
    Arbol(name: "Hoja 1.3")
    ])
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    DisclosureGroup {
                        Text("Valor 1.1")
                        DisclosureGroup {
                            Text("Valor 1.2.1")
                            Text("Valor 1.2.2")
                            Text("Valor 1.2.3")


                        } label: {
                            Text("Valor 1.2")
                        }
                        Text("Valor 1.3")
                    } label: {
                        Text("Grupo 1")
                    }
                    
                    OutlineGroup(arbol, children: \.children) { leaf in
                        Text(leaf.name)
                            .foregroundStyle(leaf.name.contains("1.2") ? .blue : .green)
                    }
                    
                    Menu("Elija opcion") {
                            ForEach(OpcionesMenu.allCases) { opc in
                                Button {
                                    switch opc {
                                    case .edit:
                                        print("has pulsado \(opc.rawValue)")
                                    case .file:
                                        print("has pulsado \(opc.rawValue)")
                                    case .window:
                                        print("has pulsado \(opc.rawValue), que bien")
                                    case .product:
                                        print("has pulsado \(opc.rawValue)")
                                    case .find:
                                        print("has pulsado \(opc.rawValue)")
                                    }
                                } label: {
                                    Text(opc.rawValue)
                                }
                            }
                    }
                    .buttonStyle(.borderedProminent)
                } header: {
                     Text("Section 1")
                }
                
                Section {
                    HStack {
                        Text("Model Name")
                        Spacer()
                        Text("iphone 15 pro")
                            .foregroundStyle(.secondary)
                    }
                    LabeledContent("Model Name", value: "iPhone 15 Pro")
                    Link("Visita Ac Academy", destination: URL(string: "acoding.academy" )!)
                    HStack {
                        ProgressView()
                        Spacer()
                        ProgressView()
                            .controlSize(.extraLarge)
                            .tint(.purple)
                    }

                } header: {
                     Text("Section 2")
                }
            }
            .navigationTitle("Formulario")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Save")
                        }
                        Button {
                            
                        } label: {
                            Text("Close")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Components1View()
}
