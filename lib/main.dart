import 'main.dart';
export 'package:beseech/features/app_user/app_user_bloc.dart';
export 'package:beseech/features/initial/pages/initial_page.dart';
export 'package:beseech/features/prayers/models.dart';
export 'dart:io';
export 'package:beseech/features/home/pages/home_page.dart';
export 'package:beseech/features/onboarding/onboarding_bloc.dart';
export 'package:beseech/features/onboarding/pages/welcome_ui.dart';
export 'package:beseech/features/prayers/prayers_bloc.dart';
export 'package:beseech/features/settings/components/material_colors_ui.dart';
export 'package:beseech/features/settings/components/theme_mode_ui.dart';
export 'package:beseech/features/settings/settings_bloc.dart';
export 'package:beseech/features/shared/core.dart';
export 'package:beseech/features/shared/shared.dart';
export 'package:clay_containers/clay_containers.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:hydrated_bloc/hydrated_bloc.dart';
export 'package:intl/intl.dart' hide TextDirection;
export 'package:states_rebuilder/scr/state_management/common/logger.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
export 'package:path_provider/path_provider.dart';

typedef UI = StatelessWidget;

void main() async {
  await RM.storageInitializer(
    BlocPersistence(),
  );
  final documentsDir = await getApplicationDocumentsDirectory();
  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: documentsDir);
  runApp(
    const ProvidersUI(),
  );
}

class MyApp extends UI {
  const MyApp({super.key});
  @override
  Widget build(context) {
    final themes = Themes(context);
    final OnboardingBloc onboardingBloc = context.watch();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.theme(),
      darkTheme: themes.darkTheme(),
      themeMode: themes.themeMode,
      home: onboardingBloc.state.isOnboardingComplete
          ? HomePage()
          : InitialPage(),
    );
  }
}

class ProvidersUI extends UI {
  const ProvidersUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PrayersBloc(),
        ),
        BlocProvider(
          create: (_) => SettingsBloc(),
        ),
        BlocProvider(
          create: (_) => OnboardingBloc(),
        ),
        BlocProvider(
          create: (_) => AppUserBloc(),
        ),
        BlocProvider(
          create: (_) => UserAgeBloc(_.read()),
        ),
      ],
      child: MyApp(),
    );
  }
}
