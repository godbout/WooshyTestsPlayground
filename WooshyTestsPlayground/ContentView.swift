import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Label("Issues 30", systemImage: "hand.thumbsup")
                }
            SecondTabView()
                .tabItem {
                    Label("Pull requests", systemImage: "hand.thumbsdown")
                }
        }
        
    }

}


struct FirstTabView: View {

    @State private var pickerSelection: Int = 1
    
    var body: some View {
        Form {
            HStack {
                VStack(alignment: .leading) {
                    Button("Draft new release") {}
                    HStack {
                        Button("Close issue") {}
                        Button("Comment") {}
                    }
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("text without any accessibility set")
                    Text("text with accessibility label set")
                        .accessibilityLabel("axLabel")
                    Text("text with accessibility value set")
                        .accessibilityValue("axValue")
                }
            }
            HStack {
                Picker("Add file", selection: $pickerSelection) {
                    Text("Create new file").tag(1)
                    Text("Upload files").tag(2)
                }
            }
            TextEditor(text: Binding.constant("Leave a comment"))
            TextField("", text: Binding.constant("input text"))
            Link("macaonews", destination: URL(string: "https://macaonews.org")!)
                        
            Text("func test_that_this_is_working_hehe")
            Text("Auto-closing menus")
            Button("28Macau") {}
        }
        .padding()
    }
        
}


struct SecondTabView: View {
    
    var body: some View {
        Text("nothing to see here.")
    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
