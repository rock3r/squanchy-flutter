import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class EventDay {
  Day day;
  List<Event> events;

  EventDay(DocumentSnapshot doc) {
    day = new Day(doc['day']);
  }
}

class Day {
  DateTime dateTime;
  String id;
  int position;

  Day(dynamic doc) {
    position = doc['position'];
    id = doc['id'];
    dateTime = doc['date'];
  }
}

enum EventType {
  talk
}

class Event {
  String title;
  EventType type;
  Day day;
  DateTime startTime;
  DateTime endTime;
  String description;
  Level level;
  Place place;
  String id;
}

class Track {
  String accentColorHex;
  String iconUrl;
  String id;
  String name;
  String textColorHex;
}

class Place {
  String id;
  String floor;
  String name;
}

enum Level {
  beginner,
  intermediate,
  advanced
}

class Speaker {
  String address;
  String bio;
  String companyName;
  String companyUrl;
  String jobDescription;
  String personalUrl;
  String phoneNumber;
  String twitterHandle;
}