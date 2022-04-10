class Event {
  static List<Event> getEvents() {
    const data = [
      {
        "id": 1,
        "eventName": "nunc commodo placerat praesent blandit",
        "eventDateTime": "9/14/2021",
        "eventLocation": "Sollars",
        "donors": 95,
        "volunteers": 65
      },
      {
        "id": 2,
        "eventName": "eget semper rutrum nulla nunc",
        "eventDateTime": "9/21/2021",
        "eventLocation": "Roberts",
        "donors": 95,
        "volunteers": 48
      },
      {
        "id": 3,
        "eventName": "fusce lacus purus aliquet at",
        "eventDateTime": "8/26/2021",
        "eventLocation": "Vauter",
        "donors": 67,
        "volunteers": 95
      },
      {
        "id": 4,
        "eventName": "luctus et ultrices posuere",
        "eventDateTime": "11/2/2021",
        "eventLocation": "Ruperti",
        "donors": 59,
        "volunteers": 50
      },
      {
        "id": 5,
        "eventName": "mus vivamus vestibulum sagittis",
        "eventDateTime": "4/24/2021",
        "eventLocation": "Le Fevre",
        "donors": 77,
        "volunteers": 77
      },
      {
        "id": 6,
        "eventName": "leo odio condimentum id luctus",
        "eventDateTime": "6/10/2021",
        "eventLocation": "Geistmann",
        "donors": 19,
        "volunteers": 91
      },
      {
        "id": 7,
        "eventName": "neque sapien placerat ante",
        "eventDateTime": "9/18/2021",
        "eventLocation": "Taffley",
        "donors": 32,
        "volunteers": 98
      },
      {
        "id": 8,
        "eventName": "quis augue luctus tincidunt",
        "eventDateTime": "7/9/2021",
        "eventLocation": "Kidds",
        "donors": 4,
        "volunteers": 22
      },
      {
        "id": 9,
        "eventName": "morbi odio odio elementum eu",
        "eventDateTime": "5/10/2021",
        "eventLocation": "Schapiro",
        "donors": 83,
        "volunteers": 24
      },
      {
        "id": 10,
        "eventName": "id consequat in consequat",
        "eventDateTime": "8/6/2021",
        "eventLocation": "Durnin",
        "donors": 4,
        "volunteers": 68
      },
      {
        "id": 11,
        "eventName": "pellentesque viverra pede ac",
        "eventDateTime": "8/2/2021",
        "eventLocation": "Spadollini",
        "donors": 99,
        "volunteers": 78
      },
      {
        "id": 12,
        "eventName": "nulla sed vel enim",
        "eventDateTime": "5/4/2021",
        "eventLocation": "Ventham",
        "donors": 39,
        "volunteers": 5
      },
      {
        "id": 13,
        "eventName": "hendrerit at vulputate vitae",
        "eventDateTime": "9/3/2021",
        "eventLocation": "Ephgrave",
        "donors": 82,
        "volunteers": 28
      },
      {
        "id": 14,
        "eventName": "augue luctus tincidunt",
        "eventDateTime": "9/12/2021",
        "eventLocation": "Cristobal",
        "donors": 94,
        "volunteers": 62
      },
      {
        "id": 15,
        "eventName": "sed magna at nunc commodo",
        "eventDateTime": "2/19/2022",
        "eventLocation": "Withrop",
        "donors": 49,
        "volunteers": 49
      },
      {
        "id": 16,
        "eventName": "id turpis integer aliquet",
        "eventDateTime": "7/15/2021",
        "eventLocation": "McGeown",
        "donors": 73,
        "volunteers": 70
      },
      {
        "id": 17,
        "eventName": "lorem ipsum dolor",
        "eventDateTime": "3/9/2022",
        "eventLocation": "Tommis",
        "donors": 10,
        "volunteers": 76
      },
      {
        "id": 18,
        "eventName": "ut volutpat sapien",
        "eventDateTime": "3/8/2022",
        "eventLocation": "Lossman",
        "donors": 44,
        "volunteers": 95
      },
      {
        "id": 19,
        "eventName": "odio odio elementum eu interdum",
        "eventDateTime": "11/17/2021",
        "eventLocation": "Long",
        "donors": 68,
        "volunteers": 6
      },
      {
        "id": 20,
        "eventName": "lectus pellentesque at nulla",
        "eventDateTime": "4/17/2021",
        "eventLocation": "Caplan",
        "donors": 32,
        "volunteers": 58
      },
      {
        "id": 21,
        "eventName": "bibendum felis sed interdum",
        "eventDateTime": "11/7/2021",
        "eventLocation": "Walsom",
        "donors": 27,
        "volunteers": 5
      },
      {
        "id": 22,
        "eventName": "non mattis pulvinar nulla",
        "eventDateTime": "2/5/2022",
        "eventLocation": "Pickup",
        "donors": 37,
        "volunteers": 49
      },
      {
        "id": 23,
        "eventName": "vulputate luctus cum sociis",
        "eventDateTime": "6/11/2021",
        "eventLocation": "Utterson",
        "donors": 80,
        "volunteers": 76
      },
      {
        "id": 24,
        "eventName": "odio curabitur convallis duis",
        "eventDateTime": "8/19/2021",
        "eventLocation": "Morrilly",
        "donors": 34,
        "volunteers": 91
      },
      {
        "id": 25,
        "eventName": "ipsum primis in faucibus orci",
        "eventDateTime": "7/18/2021",
        "eventLocation": "Barsham",
        "donors": 74,
        "volunteers": 73
      },
      {
        "id": 26,
        "eventName": "varius nulla facilisi cras",
        "eventDateTime": "11/30/2021",
        "eventLocation": "Drepp",
        "donors": 71,
        "volunteers": 1
      },
      {
        "id": 27,
        "eventName": "sit amet nulla",
        "eventDateTime": "5/18/2021",
        "eventLocation": "Geill",
        "donors": 36,
        "volunteers": 71
      },
      {
        "id": 28,
        "eventName": "aliquam non mauris morbi non",
        "eventDateTime": "11/10/2021",
        "eventLocation": "Briggs",
        "donors": 15,
        "volunteers": 32
      },
      {
        "id": 29,
        "eventName": "hac habitasse platea dictumst etiam",
        "eventDateTime": "7/19/2021",
        "eventLocation": "Cadge",
        "donors": 27,
        "volunteers": 35
      },
      {
        "id": 30,
        "eventName": "quam pharetra magna ac consequat",
        "eventDateTime": "2/5/2022",
        "eventLocation": "Yendle",
        "donors": 33,
        "volunteers": 81
      }
    ];

    return data.map<Event>(Event.fromJSON).toList();
  }

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
