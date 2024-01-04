import '../../main.dart';

Future<void> core() async {}
String get randomID => Uuid().v4();

abstract class ToJson {
  String toJson();
}

String toJson<T extends ToJson>(T value) => value.toJson();

extension ObjectExtensions on Object? {
  Widget text({
    TextStyle? style,
    double? textScaleFactor,
  }) =>
      Text(
        toString(),
        style: style,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );

  void inform({
    Object? error,
    StackTrace? stackTrace,
  }) {
    return StatesRebuilerLogger.log(
      toString(),
      error,
      stackTrace,
    );
  }

  Widget floatingActionButton(
    void Function()? onPressed, {
    String? tooltip,
  }) {
    return FloatingActionButton(
      onPressed: onPressed,
      heroTag: randomID,
      tooltip: tooltip,
      child: () {
        if (this is Icon) {
          return this as Widget;
        } else if (this is String?) {
          return text();
        }
      }(),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad({
    EdgeInsetsGeometry? padding,
  }) =>
      Padding(
        padding: padding ??
            EdgeInsets.all(8
                // settingsBloc.settings.padding
                ),
        child: this,
      );
  Widget card() => Card(
        child: this,
      ).pad();
  Widget center() => Center(child: this);
}

class MySlider extends StatelessWidget {
  const MySlider({
    super.key,
    this.name = '',
    required this.value,
    this.onChanged,
    this.borderRadius = 5,
    this.min = 0,
    this.max = 1,
  });

  final String name;
  final double value;
  final ValueChanged<double>? onChanged;
  final double borderRadius;
  final double min, max;

  // BorderRadius get _borderRadius => BorderRadius.circular(borderRadius);

  @override
  Widget build(BuildContext context) {
    final SettingsBloc settingsBloc = context.watch();
    return Card(
      // shape: RoundedRectangleBorder(
      //   borderRadius: _borderRadius,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (name.isNotEmpty)
                Card(
                  color: Theme.of(context).primaryColor,
                  child: name
                      .text(style: const TextStyle(fontWeight: FontWeight.bold))
                      .pad(),
                ).pad(),
              const SizedBox(),
              CircleAvatar(child: value.toStringAsFixed(0).text()).pad(),
            ],
          ),
          Builder(
            builder: (context) {
              return GestureDetector(
                onHorizontalDragUpdate: (details) {
                  double updated =
                      (details.localPosition.dx / (context.size!.width))
                          .clamp(0.0, 1.0);
                  onChanged?.call(updated * (max - min) + min);
                },
                child: LinearProgressIndicator(
                  value: (value - min) / (max - min),
                  minHeight: 40,
                  backgroundColor: Colors.grey,
                  borderRadius:
                      BorderRadius.circular(settingsBloc.settings.borderRadius),
                  // borderRadius: _borderRadius,
                ),
              );
            },
          ).pad().pad(),
        ],
      ),
    );
  }
}

class BlocPersistence implements IPersistStore {
  late Box _box;
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('default');
  }

  @override
  Object? read(String key) => _box.get(key);

  @override
  Future<void> write<T>(String key, T value) => _box.put(key, value as String);

  @override
  Future<void> delete(String key) => _box.delete(key);

  @override
  Future<void> deleteAll() => _box.clear();
}

class Themes {
  final BuildContext context;
  static const cardElevation = 4.0;
  Themes(this.context);

  ThemeMode get themeMode => context.watch<SettingsBloc>().themeMode;

  ThemeData theme() {
    final SettingsBloc settingsBloc = context.watch();
    return FlexThemeData.light(
      colorScheme:
          ColorScheme.fromSwatch(primarySwatch: settingsBloc.materialColor),
      fontFamily: GoogleFonts.getFont('Dosis').fontFamily!,
      useMaterial3: true,
      lightIsWhite: true,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsBloc.borderRadius,
        cardElevation: cardElevation,
        cardRadius: settingsBloc.borderRadius,
      ),
      appBarStyle: FlexAppBarStyle.primary,
    );
  }

  ThemeData darkTheme() {
    final SettingsBloc settingsBloc = context.watch();
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsBloc.materialColor,
        brightness: Brightness.dark,
      ),
      fontFamily: GoogleFonts.getFont('Dosis').fontFamily ?? 'Lotion',
      useMaterial3: true,
      darkIsTrueBlack: true,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsBloc.borderRadius,
        cardElevation: cardElevation,
        cardRadius: settingsBloc.borderRadius,
      ),
      appBarStyle: FlexAppBarStyle.primary,
    );
  }
}
