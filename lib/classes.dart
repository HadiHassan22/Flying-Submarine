class Hotel{
  int id;
  String name;
  String description;
  double rate;
  int rooms;
  Geolocation geolocation;
  Hotline hotline;
  Location location;

  Hotel(this.name,this.description,this.rooms,this.location,this.hotline,this.geolocation,this.id,this.rate);

}

class Geolocation{

  Geolocation(this.latitude,this.longitude);
  int longitude;
  int latitude;
}

class Hotline{
  Hotline(this.cellular,this.landline);
  int landline;
  int cellular;
}

class Location{
  Location(this.country,this.city);
  String country;
  String city;
}