import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_bloc.dart';
import 'package:mqfm_apps/features/artikel/applications/artikel_bloc/artikel_event.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/applications/audio_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_bloc.dart';
import 'package:mqfm_apps/features/categories/applications/category_bloc/category_event.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_bloc.dart';
import 'package:mqfm_apps/features/event/applications/event_bloc/event_event.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_bloc.dart';
import 'package:mqfm_apps/features/location/applications/location_bloc/location_event.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_bloc.dart';
import 'package:mqfm_apps/features/playlist/applications/playlist_bloc/playlist_event.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_bloc.dart';
import 'package:mqfm_apps/features/recommendation/applications/recommendation_bloc/recommendation_event.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_bloc.dart';
import 'package:mqfm_apps/features/resume/applications/resume_bloc/resume_event.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_bloc.dart';
import 'package:mqfm_apps/features/series/applications/series_bloc/series_event.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_event.dart';

class DashboardProviders extends StatelessWidget {
  final Widget child;

  const DashboardProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CategoryBloc>()..add(const CategoryEvent.fetch()),
        ),
        BlocProvider(
          create: (_) => getIt<AudioListBloc>()..add(const AudioListEvent.fetch()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<RecommendationBloc>()..add(const RecommendationEvent.fetchAll()),
        ),
        BlocProvider(
          create: (_) => getIt<EventBloc>()..add(const EventEvent.fetchUpcoming()),
        ),
        BlocProvider(
          create: (_) => getIt<SeriesBloc>()..add(const SeriesEvent.fetch()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<VoteBloc>()..add(const VoteEvent.fetchWeeklyRanking()),
        ),
        BlocProvider(
          create: (_) => getIt<ResumeBloc>()..add(const ResumeEvent.fetch()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<ArtikelListBloc>()..add(const ArtikelListEvent.fetch()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<LocationBloc>()..add(const LocationEvent.detectGps()),
        ),
        BlocProvider(
          create: (_) => getIt<PlaylistBloc>()..add(const PlaylistEvent.fetch()),
        ),
      ],
      child: child,
    );
  }
}
