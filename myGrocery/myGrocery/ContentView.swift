
import SwiftUI

struct ContentView: View {
    @State var grocery = ["Water","Doritos","Kinder","Pepsi","Tomato"]
    @State var newitem = ""
    var body: some View {
        VStack{
        List(grocery, id:\.self){ item in

            HStack{
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text(item)
                    .shadow(radius: 20)
                }
            }
            Button{
                grocery.append(newitem)
            } label: {
                Image(systemName: "plus")

                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
                
                TextField("Type your item", text: $newitem)
                    .frame(width: 200, height: 50)
                
                Button{
                    grocery.remove(at: 0)
                } label: {
                Image(systemName: "minus")

                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
