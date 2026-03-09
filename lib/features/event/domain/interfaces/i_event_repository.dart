import 'package:dartz/dartz.dart';
import 'package:mqfm_apps/features/event/domain/entities/event.dart';

abstract class IEventRepository {
  Future<Either<String, List<EventEntity>>> getUpcomingEvents();
  Future<Either<String, EventEntity>> getEventById(int id);
  Future<Either<String, String>> rsvpEvent(int id);
  Future<Either<String, String>> cancelRsvp(int id);
  Future<Either<String, List<EventEntity>>> getMyRsvps();
}
