import SwiftUI

struct UserView: View {

  @State private var userName = ""
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("User")) {
          // bind userName to a TextField. When the user types, text field updates userName.
          TextField("User Name", text: $userName)
        }
      }
    }
    // displays userName as part of the nav bar. whenever userName changes, navbar changes
    .navigationBarTitle(Text("\(userName) Info"), displayMode: .inline)
    .navigationBarItems(
      trailing:
        Button(action: updateUserInfo) {
          Text("Update")
        }
   )
  }
  
  func updateUserInfo() {
    
  }
}

struct UserView_Previews: PreviewProvider {
  static var previews: some View {
    UserView()
  }
}
