class Event {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final String venue;
  final DateTime? notifyAt;
  final bool notified;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.venue,
    this.notifyAt,
    this.notified = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'venue': venue,
      'notifyAt': notifyAt?.toIso8601String(),
      'notified': notified,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      date: map['date'] != null ? DateTime.parse(map['date']) : DateTime.now(),
      venue: map['venue'] ?? '',
      notifyAt: map['notifyAt'] != null ? DateTime.parse(map['notifyAt']) : null,
      notified: map['notified'] ?? false,
    );
  }
}
