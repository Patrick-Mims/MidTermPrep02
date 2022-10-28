
/*
    Patrick Mims
    October 26, 2022
    Midterm Project 2
 */

import SwiftUI

struct ContentView: View {
    var food = ["food01", "food02", "food03", "food04", "food05"]
    var description = ["item1", "item2", "item3", "item4", "item5"]
    var price = ["12.99", "16.99", "21.99", "43.99", "22.99"]
    
    @State private var itemImg = "food01"
    @State private var itemDesc = "Item 1"
    @State private var itemPrice = "122.99"
    @State private var x = 1
    
    var body: some View {
        Text("Hello, May I Take Your Order?")
            .padding()
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Image(itemImg)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text(description[x])
                    .padding()
                Text(price[x])
                    .padding()
                Button("Next Dish") {
                    if self.x < food.count {
                        itemImg = food[x]
                        itemDesc = description[x]
                        itemPrice = price[x]
                        self.x += 1
                    } else {
                        self.x = 0
                    }
                }
                .buttonStyle(.bordered)
            }
        }
        .accentColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
