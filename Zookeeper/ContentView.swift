//
//  ContentView.swift
//  Zookeeper
//
//  Created by Andre Bezada on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]

    
    var body: some View {
        VStack{
            Text("I 🧡 List").font(.headline)
            List{
                ForEach(animalGroups){ animalGroup in
                    Section(header: Text(animalGroup.groupName)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .lineLimit(/*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                        ){
                        ForEach(animalGroup.animals){ animal in
                            Text(animal.name)
                                .font(.body)
                                .fontWeight(.black)
                                .foregroundColor(Color(hue: 0.053, saturation: 0.824, brightness: 0.978))
                                
                                
                                
                                
                        }
                    }
                }
            }
        }
    }
}

struct Animal: Identifiable{
    var id = UUID()
    var name: String
}

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName : String
    var animals : [Animal]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
