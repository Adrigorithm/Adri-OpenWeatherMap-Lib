class Geocoding {
  Geocoding(this.name, this.local_names, this.latitude, this.longitude,
      this.country, this.state);

  final String name;
  final Map<String, dynamic> local_names;
  final double latitude;
  final double longitude;
  final String country;
  final String state;

  factory Geocoding.fromJson(Map<String, dynamic> data) {
    return Geocoding(data["name"], data["local_names"], data["lat"],
        data["lon"], data["country"], data["state"] ?? "");
  }
}
