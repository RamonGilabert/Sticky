import UIKit

struct TableViewModel {

  var image: UIImage? = nil
  var title: String = ""
  var subtitle: String = ""

  static var cells = [
    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Truffaut normcore",
      subtitle: "Aesthetic fashion axe 3 wolf moon hashtag, jean shorts kitsch pinterest normcore cliche. " +
      "Squid jean shorts venmo lomo biodiesel, marfa raw denim yuccie sriracha twee pug ramps."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Organic austin",
      subtitle: "Flannel VHS hammock, kitsch scenester keffiyeh tacos shabby chic " +
      "letterpress butcher offal echo park raw denim."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Green juice",
      subtitle: "Tacos YOLO locavore fingerstache, bitters street art ethical actually artisan " +
      "pork belly yr franzen PBR&B polaroid. Mumblecore disrupt butcher cold-pressed pork belly."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Chicharrones dreamcatcher",
      subtitle: "Trust fund pickled gentrify, jean shorts man bun pug everyday carry gluten-free. " +
      "Listicle meh aesthetic, gentrify neutra sartorial distillery waistcoat."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Offal banh",
      subtitle: "Flannel VHS hammock, kitsch scenester keffiyeh tacos shabby chic letterpress " +
      "butcher offal echo park raw denim"),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Tumblr austin",
      subtitle: "Tacos YOLO locavore fingerstache, bitters street art ethical actually artisan " +
      "pork belly yr franzen PBR&B polaroid. Mumblecore disrupt butcher cold-pressed pork belly."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Aesthetic fashion",
      subtitle: "Flannel VHS hammock, kitsch scenester keffiyeh tacos shabby chic letterpress " +
      "butcher offal echo park raw denim"),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Hashtag chambray",
      subtitle: "Trust fund pickled gentrify, jean shorts man bun pug everyday carry gluten-free. " +
      "Listicle meh aesthetic, gentrify neutra sartorial distillery waistcoat."),

    TableViewModel(
      image: UIImage(named: "avatar"),
      title: "Hashtag sticky",
      subtitle: "Tacos YOLO locavore fingerstache, bitters street art ethical actually artisan " +
      "pork belly yr franzen PBR&B polaroid. Mumblecore disrupt butcher cold-pressed pork belly.")
  ]
}
