import 'package:json_annotation/json_annotation.dart';
part 'driver.g.dart';

@JsonSerializable()
class Driver {
  String id;
  String email;
  String password;
  String name;
  String surname;
  String birthDate;
  String gender;
  String phoneNumber;
  String nationalId;
  String passportNumber;
  String location;
  String info;
  List<String> skills;
  List<String> languages;
  String licenceNumber;
  String licenceYear;
  double rating;
  int hourlyPrice;
  String taxNumber;
  Map<String, dynamic> carInfo;
  List<String> trips;
  String profileImage;
  List<String> reviews;

  Driver({
    this.id = "null",
    this.email = "null",
    this.password = "null",
    this.name = "null",
    this.surname = "null",
    this.birthDate = "1900-01-01",
    this.gender = "Male",
    this.phoneNumber = "5000000000",
    this.nationalId = "null",
    this.passportNumber = "null",
    this.location = "null",
    this.info = "null",
    this.skills = const [],
    this.languages = const [],
    this.licenceNumber = "null",
    this.licenceYear = "null",
    this.rating = 0,
    this.hourlyPrice = 0,
    this.taxNumber = "null",
    this.carInfo = const {},
    this.trips = const [],
    this.profileImage = "null",
    this.reviews = const[]
  });

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);

  @override
  String toString() {
    return "email : $email\npassword : $password\nname : $name\nsurname : $surname\nbirthDate : $birthDate\ngender : $gender\nphoneNumber : $phoneNumber\nnationalId : $nationalId\npassportNumber : $passportNumber\nlocation : $location\ninfo : $info\nskills : $skills\nlanguages : $languages\nlicenceNumber : $licenceNumber\nlicenceYear : $licenceYear\nrating : $rating\nhourlyPrice : $hourlyPrice\ntaxNumber : $taxNumber\ncarInfo : $carInfo\ntrips : $trips\nreviews : $reviews";
  }
}
