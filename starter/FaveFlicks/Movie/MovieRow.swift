import SwiftUI

struct MovieRow: View {
  let movie: Movie

  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(movie.title)
          .font(.title)
        Text(movie.genre)
          .font(.caption)
      }
      Spacer()
      VStack(alignment: .trailing) {
        Spacer()
        RatingView(rating: movie.rating)
      }
    }
  }
}

struct MovieRow_Previews: PreviewProvider {
  static var previews: some View {
    /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
  }
}
