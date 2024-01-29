import 'package:beseech/features/prayers/pages/fajr_bloc.dart';

import 'main.dart';

export 'dart:convert';
export 'dart:io';
export 'package:beseech/features/app_user/app_user.dart';
export 'package:beseech/features/home/components/generic_prayer_counter_ui.dart';
export 'package:beseech/features/home/components/remainig_prayers_ui.dart';
export 'package:beseech/features/home/pages/home_page.dart';
export 'package:beseech/features/initial/pages/initial_page.dart';
export 'package:beseech/features/onboarding/onboarding.dart';
export 'package:beseech/features/onboarding/onboarding_bloc.dart';
export 'package:beseech/features/onboarding/pages/welcome_ui.dart';
export 'package:beseech/features/prayers/models.dart';
export 'package:beseech/features/prayers/prayers_bloc.dart';
export 'package:beseech/features/settings/components/material_colors_ui.dart';
export 'package:beseech/features/settings/components/theme_mode_ui.dart';
export 'package:beseech/features/settings/components/user_information_ui.dart';
export 'package:beseech/features/settings/pages/settings_page.dart';
export 'package:beseech/features/settings/settings.dart';
export 'package:beseech/features/shared/core.dart';
export 'package:beseech/features/shared/router.dart';
export 'package:beseech/features/shared/shared.dart';
export 'package:clay_containers/clay_containers.dart';
export 'package:dots_indicator/dots_indicator.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:hydrated_bloc/hydrated_bloc.dart';
export 'package:intl/intl.dart' hide TextDirection;
export 'package:path_provider/path_provider.dart';
export 'package:states_rebuilder/scr/state_management/common/logger.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  await RM.storageInitializer(HiveStorage());

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (create) => FajrBloc(),
        ),
        BlocProvider(
          create: (create) => SettingsBloc(),
        )
      ],
      child: const App(),
    ),
  );
}

class App extends UI {
  const App({super.key});
  @override
  Widget build(context) {
    final SettingsBloc settingsBloc = context.watch<SettingsBloc>();
    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme(settingsBloc),
      darkTheme: darkTheme(settingsBloc),
      themeMode: settingsBloc.state.themeMode,
      home: onboarding.isOnboardingComplete ? HomePage() : InitialPage(),
      restorationScopeId: 'app',
    );
  }
}

abstract class Model<T> {
  T call([T? t]);
}
