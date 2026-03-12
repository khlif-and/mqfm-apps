---
name: skills-claude
description: >-
  Apply Khalif's personal coding standards whenever writing or reviewing any code.
  Always use this skill for ALL code generation tasks — Flutter, Dart, Go, Elixir,
  WAT, JavaScript, TypeScript, or any language. Triggers on buatkan, buat kode,
  write code, create, implement, refactor, fix, add feature, or any request to
  produce code. Architecture is Atomic Design for UI and Clean Architecture for logic.
  State management is BLoC + freezed. DI is GetIt + injectable. Never skip this skill
  when code is involved.
---

# Khalif Code Style

## Core Principles

**DRY** — No logic duplication. Extract to functions, helpers, or reusable modules.
**KISS** — Simplest solution that actually works. No over-engineering.
**YAGNI** — Don't add anything not needed right now.
**Separation of Concerns** — Every file has exactly one responsibility.

---

## Hard Rules

- No code comments — good naming explains itself
- No verbose or redundant code
- No logic duplication
- No file handling more than one concern
- No premature abstraction

---

## Project Architecture

### Feature Structure

Every feature lives under `lib/features/<feature_name>/` with three layers:

```
lib/features/<feature>/
  domain/
    entities/         ← pure Dart, freezed, no serialization
    interfaces/       ← abstract repository contracts (i_*.dart)
  data/
    models/
      dto/            ← JSON mapping only, toEntity()
      request/        ← request body models, toJson()
    datasources/
      remotes/        ← plain Dio class (@lazySingleton or registered in register_module)
      locals/         ← SQLite helpers, SharedPreferences, file IO
    repositories/     ← implements domain interface (@LazySingleton(as: IRepo))
  applications/
    <feature>_bloc/
      <feature>_event.dart   ← @freezed events
      <feature>_state.dart   ← @freezed states
      <feature>_bloc.dart    ← @injectable, handles all events
```

### Presentation Structure

```
lib/presentation/
  atoms/          ← no state, no logic, pure visual widget
  molecules/      ← combines atoms, stateless, no BLoC access
  organisms/      ← complex sections, may have local state, no direct API calls
  pages/          ← full screens, provides BLoC, reads state, delegates logic
  logic/          ← non-BLoC helpers (GuideTourManager, DialogHelper, etc.)
```

### Core Structure

```
lib/core/
  di/             ← injection.dart, injection.config.dart, register_module.dart
  manager/        ← singletons with ValueNotifier (AudioPlayerManager, UserManager)
  network/        ← DioClient, ApiInterceptor
  routes/         ← AppRoutes (go_router), AppPathRoutes
  models/         ← shared models (BaseResponse)
  utils/
    constants/    ← AppColors, AppDims, AppStrings, ApiConstants
    helpers/      ← PreferencesHelper, MessageHelper, LogHelper
```

---

## Atomic Design

**atoms/** — Smallest UI unit. No state. No business logic. Pure visual. `const` wherever possible.
**molecules/** — Combines 2+ atoms. Stateless. No BLoC.
**organisms/** — Complex section. Local `setState` only if truly isolated. Never dispatches events directly to remote BLoC — receives callbacks from page.
**pages/** — Full screen. Provides BLoC via `BlocProvider`. Uses `BlocConsumer`/`BlocBuilder`. No business logic inline.

---

## Clean Architecture Layer Rules

**domain/entities/** — `@freezed` class, no `@JsonSerializable`, no `.fromJson` beyond freezed's own. All fields `@Default` where possible (avoid required on everything).

**domain/interfaces/** — abstract class only. Method signatures return `Either<String, T>`. No implementation.

**data/models/dto/** — `@JsonSerializable()`, implements `toEntity()`. Use `@JsonKey(name: 'snake_case')` for field mapping. Use `ApiConstants.buildMediaUrl()` for relative media URLs.

**data/models/request/** — `@JsonSerializable(includeIfNull: false)`, only `toJson()`. Use `@JsonKey(name: 'snake_case')`.

**data/datasources/remotes/** — Plain Dio class (NOT Retrofit). Constructor takes `Dio`. Methods call `_dio.get/post/put/delete`, parse `response.data['data']` directly. `@lazySingleton` or registered in `register_module.dart`.

**data/repositories/** — `@LazySingleton(as: IRepo)`. Constructor takes only the datasource(s) needed. try/catch `DioException` only. Call `notifyChange()` on mutation if using change notifier pattern.

**applications/<feature>_bloc/** — `@injectable`. Constructor takes repository interface. Register events in constructor. Each handler is a private `_onEventName` method.

---

## BLoC Pattern

```dart
// Events: @freezed
@freezed
class FooEvent with _$FooEvent {
  const factory FooEvent.fetch() = FooFetch;
  const factory FooEvent.create({required String name}) = FooCreate;
}

// States: @freezed
@freezed
class FooState with _$FooState {
  const factory FooState.initial() = FooInitial;
  const factory FooState.loading() = FooLoading;
  const factory FooState.loaded({required List<FooEntity> items}) = FooLoaded;
  const factory FooState.actionSuccess({required String message}) = FooActionSuccess;
  const factory FooState.error({required String message}) = FooError;
}

// Bloc: @injectable
@injectable
class FooBloc extends Bloc<FooEvent, FooState> {
  final IFooRepository _repository;
  FooBloc(this._repository) : super(const FooState.initial()) {
    on<FooFetch>(_onFetch);
    on<FooCreate>(_onCreate);
  }
  Future<void> _onFetch(FooFetch event, Emitter<FooState> emit) async { ... }
  Future<void> _onCreate(FooCreate event, Emitter<FooState> emit) async { ... }
}
```

- `actionSuccess(message)` for mutations (create/update/delete/add/remove)
- `loaded(items)` for list fetch
- `detailLoaded(item)` for single fetch
- No `toggle` states — use `actionSuccess`

---

## Datasource Pattern (Plain Dio)

```dart
@lazySingleton
class FooRemoteDatasource {
  final Dio _dio;
  static const _base = '/api/v1/user/foos';

  FooRemoteDatasource(this._dio);

  Future<FooEntity> create(FooRequest body) async {
    final response = await _dio.post(_base, data: body.toJson());
    return FooDto.fromJson(response.data['data']).toEntity();
  }

  Future<List<FooEntity>> getAll() async {
    final response = await _dio.get(_base);
    return (response.data['data'] as List)
        .map((e) => FooDto.fromJson(e).toEntity())
        .toList();
  }
}
```

- No Retrofit, no `@RestApi()`, no `part '*.g.dart'` in datasource
- Parse `response.data['data']` directly
- Backend response: `{"status": 200, "message": "...", "data": ...}`

---

## DI Rules

- `@lazySingleton` on datasource (if plain Dio) or registered in `register_module.dart`
- `@LazySingleton(as: IRepo)` on repository impl
- `@injectable` on BLoC (new instance per page)
- Manual singletons (AudioPlayerManager, UserManager) registered in `register_module.dart` or as `@singleton`
- Never call `getIt<T>()` inside widgets — use `BlocProvider(create: (_) => getIt<FooBloc>())`

---

## Either Error Handling

```dart
// Repository
Future<Either<String, FooEntity>> create(...) async {
  try {
    final entity = await _datasource.create(...);
    return Right(entity);
  } on DioException catch (e) {
    return Left(e.response?.data?['message']?.toString() ?? 'Terjadi kesalahan');
  } catch (e) {
    return Left(e.toString());
  }
}

// BLoC handler
final result = await _repository.create(...);
result.fold(
  (error) => emit(FooState.error(message: error)),
  (entity) => emit(FooState.actionSuccess(message: 'Berhasil dibuat')),
);
```

---

## File Naming

| Folder | Pattern | Example |
|---|---|---|
| atoms/ | descriptive noun | app_button.dart |
| molecules/ | noun phrase | search_bar.dart |
| organisms/ | noun phrase | player_content.dart |
| pages/ | *_page | home_page.dart |
| entities/ | plain noun | audio.dart |
| interfaces/ | i_*_repository | i_audio_repository.dart |
| dto/ | *_dto | audio_dto.dart |
| request/ | *_request | create_audio_request.dart |
| datasources/remotes/ | *_api_service | audio_api_service.dart |
| datasources/locals/ | *_db_helper / *_downloader | download_db_helper.dart |
| repositories/ | *_repository | audio_repository.dart |
| *_bloc/ | *_event / *_state / *_bloc | audio_event.dart |

---

## Go (Backend)

- Package names: short lowercase (`auth`, `handler`, `router`)
- Handler functions: verb + noun (`CreatePlaylist`, `GetAudioById`)
- Struct fields: PascalCase with json tags
- Error: always return `error`, never panic in handlers
- Use repository pattern — handler → use case → repository

---

## Performance

- `const` constructors everywhere possible
- `ListView.builder` / `SliverList` for any list — never `Column` + `.map()`
- No heavy computation inside `build()`
- `RepaintBoundary` to isolate expensive widget subtrees
- `cached_network_image` with explicit width/height
- `CustomScrollView` + Sliver for complex scroll layouts
- Minimize `setState` scope — rebuild as little as possible

---

## Functions & Methods

- One function, one purpose
- Ideal length: fits on screen (under 30 lines)
- More than 3 parameters: use a class or record
- No boolean parameters — use named params or enums
- Return early, avoid deep nesting

---

## Naming Convention

| Context | Style | Example |
|---|---|---|
| Class / Widget | PascalCase | PlayerContent |
| Function / Variable | camelCase | fetchAudios |
| File | snake_case | audio_api_service.dart |
| Constant | camelCase | maxCachedAudios |
| Go package | short lowercase | auth, handler |
| Elixir module | PascalCase | MqFm.Stream.Audio |

---

## Pre-output Checklist

- No code comments
- No logic duplication
- Each file has one responsibility
- File name matches its folder pattern from the naming table
- Atom / molecule / organism / page placed in correct layer
- Datasource is plain Dio — no Retrofit
- Repository only takes its own datasource (no extra `Dio` param unless scraping)
- BLoC event handlers are private `_onEventName` methods
- `Either<String, T>` for all repository return types
- No heavy ops in build cycle
- Long lists use lazy builder
- Errors handled explicitly — no silent catch