import '../models/event_model.dart';

class EventService {
  static final EventService _instance = EventService._internal();
  factory EventService() => _instance;
  EventService._internal();

  final List<Event> _events = [
    Event(
      id: '1',
      title: 'Annual Sports Day',
      description: 'Join us for a day of sports, competition, and fun with various outdoor activities.',
      date: DateTime.now().add(const Duration(days: 2)),
      venue: 'College Main Ground',
    ),
    Event(
      id: '2',
      title: 'Tech Symposium 2024',
      description: 'A gathering of tech enthusiasts featuring workshops, guest speakers, and coding competitions.',
      date: DateTime.now().add(const Duration(days: 7)),
      venue: 'Seminar Hall 1',
    ),
    Event(
      id: '3',
      title: 'Cultural Fest',
      description: 'Celebrating diversity through music, dance, and art performances by students.',
      date: DateTime.now().add(const Duration(days: 14)),
      venue: 'Open Air Theater',
    ),
    Event(
      id: '4',
      title: 'Placement Drive',
      description: 'Major companies visiting for recruitment. Open for final year students.',
      date: DateTime.now().add(const Duration(days: 5)),
      venue: 'Placement Cell',
    ),
  ];

  List<Event> getEvents() {
    return List.unmodifiable(_events);
  }

  void addEvent(Event event) {
    _events.add(event);
    _sortEvents();
  }

  void _sortEvents() {
    _events.sort((a, b) => a.date.compareTo(b.date));
  }
}
