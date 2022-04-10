class Event {
  final String eventName;
  final String eventDateTime;
  final String eventLocation;
  final int donors;
  final int volunteers;

  Event(
      {required this.eventName,
      required this.eventDateTime,
      required this.eventLocation,
      required this.donors,
      required this.volunteers});

  static Event fromJSON(json) => Event(
      eventName: json['eventName'],
      eventDateTime: json['eventDateTime'],
      eventLocation: json['eventLocation'],
      donors: json['donors'],
      volunteers: json['volunteers']);
}
