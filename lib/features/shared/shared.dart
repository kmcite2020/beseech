// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:beseech/main.dart';

part 'common_ui.dart';
part 'router.dart';

extension A0001 on Object? {
  String get str {
    return toString();
  }

  // Widget text({
  //   double? size,
  //   Color? textColor,
  //   Color? parentColor,
  //   Color? color,
  // }) {
  //   return ClayText(
  //     str,
  //     size: size ?? 20,
  //     color: color,
  //     parentColor: parentColor,
  //     textColor:
  //         textColor ?? configurationBloc.configuration.materialColor.shade800,
  //   );
  // }
}

extension A0002 on DateTime? {
  String get humanReadable {
    if (this == null) {
      return 'None';
    } else {
      return DateFormat.yMMMEd().format(this!);
    }
  }
}

const APP_STORAGE = 'beseech';
const SETTINGS_MODEL = 'settings';
const IS_INIT = 'isInit';
const PRAYER_MODEL = 'prayers';
const PRAYER_COUNT_TEXT_SCALE_FACTOR = 5.0;
const FIRST_RUN_HEADER_TEXT_SCALE_FACTOR = 1.4;
const ADULT_AGE = 365 * 14;

extension A0003 on Widget {
  // Widget pad([double? padding]) => Padding(
  //       padding:
  //           EdgeInsets.all(padding ?? configurationBloc.configuration.padding),
  //       child: this,
  //     );
  Widget get center => Center(child: this);
  Widget avatar({
    Color? backgroundColor,
    Color? foregroundColor,
    ImageProvider<Object>? backgroundImage,
    ImageProvider<Object>? foregroundImage,
    void Function(Object, StackTrace?)? onBackgroundImageError,
    void Function(Object, StackTrace?)? onForegroundImageError,
    double? minRadius,
    double? maxRadius,
    double? radius,
  }) =>
      Builder(
        builder: (context) {
          final SettingsBloc settingsBloc = context.watch();
          return CircleAvatar(
            backgroundColor:
                backgroundColor ?? settingsBloc.settings.materialColor,
            foregroundColor: foregroundColor,
            backgroundImage: backgroundImage,
            foregroundImage: foregroundImage,
            onBackgroundImageError: onBackgroundImageError,
            onForegroundImageError: onForegroundImageError,
            minRadius: minRadius,
            maxRadius: maxRadius,
            radius: radius,
            child: this,
          );
        },
      );
  // Widget get card => Card(
  //       child: this,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(
  //           configurationBloc.configuration.borderRadius,
  //         ),
  //       ),
  //     );
  Widget container({
    double? height,
    double? width,
    Color? color,
    Color? surfaceColor,
    Color? parentColor,
    double? spread,
    double? borderRadius,
    BorderRadius? customBorderRadius,
    CurveType? curveType,
    int? depth,
    bool? emboss,
    void Function()? onTap,
  }) {
    return Builder(
      builder: (context) {
        final SettingsBloc settingsBloc = context.watch();
        return ClayContainer(
          height: height,
          width: width,
          color: color ?? settingsBloc.materialColor.shade800,
          surfaceColor: surfaceColor,
          parentColor: parentColor,
          spread: spread,
          borderRadius: borderRadius ?? settingsBloc.borderRadius,
          customBorderRadius: customBorderRadius,
          curveType: curveType,
          depth: depth,
          emboss: emboss ?? true,
          child: GestureDetector(
            onDoubleTap: onTap,
            child: this,
          ),
        );
      },
    );
  }
}

extension XPOSB on List<Widget> {
  Widget column({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) =>
      Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        verticalDirection: verticalDirection,
        children: this,
      );
  Widget row() => Row(
        children: this,
      );
  Widget stack() => Stack(children: this);
}
