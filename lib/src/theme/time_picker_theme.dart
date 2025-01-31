import 'package:flutter/foundation.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:macos_ui/src/library.dart';

/// Overrides the default style of its [MacosTimePicker] descendants.
///
/// See also:
///
///  * [MacosTimePickerThemeData], which is used to configure this theme.
class MacosTimePickerTheme extends InheritedTheme {
  /// Builds a [MacosTimePickerTheme].
  ///
  /// The [data] parameter must not be null.
  const MacosTimePickerTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// The configuration of this theme.
  final MacosTimePickerThemeData data;

  /// The closest instance of this class that encloses the given context.
  ///
  /// If there is no enclosing [MacosTimePickerTheme] widget, then
  /// [MacosThemeData.timePickerTheme] is used.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// final theme = MacosTimePickerTheme.of(context);
  /// ```
  static MacosTimePickerThemeData of(BuildContext context) {
    final MacosTimePickerTheme? datePickerTheme =
        context.dependOnInheritedWidgetOfExactType<MacosTimePickerTheme>();
    return datePickerTheme?.data ?? MacosTheme.of(context).timePickerTheme;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return MacosTimePickerTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(MacosTimePickerTheme oldWidget) =>
      data != oldWidget.data;
}

class MacosTimePickerThemeData with Diagnosticable {
  MacosTimePickerThemeData({
    this.backgroundColor,
    this.selectedElementColor,
    this.selectedElementTextColor,
    this.caretColor,
    this.clockViewBackgroundColor,
    this.caretControlsBackgroundColor,
    this.caretControlsSeparatorColor,
    this.hourHandColor,
    this.minuteHandColor,
    this.secondHandColor,
    this.hourTextColor,
    this.dayPeriodTextColor,
    this.clockViewBorderColor,
    this.shadowColor,
  });

  final Color? backgroundColor;
  final Color? selectedElementColor;
  final Color? selectedElementTextColor;
  final Color? caretColor;
  final Color? caretControlsBackgroundColor;
  final Color? caretControlsSeparatorColor;
  final Color? clockViewBackgroundColor;
  final Color? hourHandColor;
  final Color? minuteHandColor;
  final Color? secondHandColor;
  final Color? hourTextColor;
  final Color? dayPeriodTextColor;
  final Color? clockViewBorderColor;
  final Color? shadowColor;

  /// Copies this [MacosTimePickerThemeData] into another.
  MacosTimePickerThemeData copyWith({
    Color? backgroundColor,
    Color? selectedElementColor,
    Color? selectedElementTextColor,
    Color? caretColor,
    Color? caretControlsBackgroundColor,
    Color? caretControlsSeparatorColor,
    Color? clockViewBackgroundColor,
    Color? hourHandColor,
    Color? minuteHandColor,
    Color? secondHandColor,
    Color? hourTextColor,
    Color? dayPeriodTextColor,
    Color? clockViewBorderColor,
    Color? shadowColor,
  }) {
    return MacosTimePickerThemeData(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectedElementColor: selectedElementColor ?? this.selectedElementColor,
      selectedElementTextColor:
          selectedElementTextColor ?? this.selectedElementTextColor,
      caretColor: caretColor ?? this.caretColor,
      caretControlsBackgroundColor:
          caretControlsBackgroundColor ?? this.caretControlsBackgroundColor,
      caretControlsSeparatorColor:
          caretControlsSeparatorColor ?? this.caretControlsSeparatorColor,
      clockViewBackgroundColor:
          clockViewBackgroundColor ?? this.clockViewBackgroundColor,
      hourHandColor: hourHandColor ?? this.hourHandColor,
      minuteHandColor: minuteHandColor ?? this.minuteHandColor,
      secondHandColor: secondHandColor ?? this.secondHandColor,
      hourTextColor: hourTextColor ?? this.hourTextColor,
      dayPeriodTextColor: dayPeriodTextColor ?? this.dayPeriodTextColor,
      clockViewBorderColor: clockViewBorderColor ?? this.clockViewBorderColor,
      shadowColor: shadowColor ?? this.shadowColor,
    );
  }

  /// Linearly interpolate between two [MacosTimePickerThemeData].
  ///
  /// All the properties must be non-null.
  static MacosTimePickerThemeData lerp(
    MacosTimePickerThemeData a,
    MacosTimePickerThemeData b,
    double t,
  ) {
    return MacosTimePickerThemeData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
      selectedElementColor:
          Color.lerp(a.selectedElementColor, b.selectedElementColor, t),
      selectedElementTextColor:
          Color.lerp(a.selectedElementTextColor, b.selectedElementTextColor, t),
      caretColor: Color.lerp(a.caretColor, b.caretColor, t),
      caretControlsBackgroundColor: Color.lerp(
        a.caretControlsBackgroundColor,
        b.caretControlsBackgroundColor,
        t,
      ),
      caretControlsSeparatorColor: Color.lerp(
        a.caretControlsSeparatorColor,
        b.caretControlsSeparatorColor,
        t,
      ),
      clockViewBackgroundColor:
          Color.lerp(a.clockViewBackgroundColor, b.clockViewBackgroundColor, t),
      hourHandColor: Color.lerp(a.hourHandColor, b.hourHandColor, t),
      minuteHandColor: Color.lerp(
        a.minuteHandColor,
        b.minuteHandColor,
        t,
      ),
      secondHandColor: Color.lerp(
        a.secondHandColor,
        b.secondHandColor,
        t,
      ),
      hourTextColor: Color.lerp(
        a.hourTextColor,
        b.hourTextColor,
        t,
      ),
      dayPeriodTextColor: Color.lerp(
        a.dayPeriodTextColor,
        b.dayPeriodTextColor,
        t,
      ),
      clockViewBorderColor: Color.lerp(
        a.clockViewBorderColor,
        b.clockViewBorderColor,
        t,
      ),
      shadowColor: Color.lerp(a.shadowColor, b.shadowColor, t),
    );
  }

  MacosTimePickerThemeData merge(MacosTimePickerThemeData? other) {
    if (other == null) return this;
    return copyWith(
      backgroundColor: other.backgroundColor,
      selectedElementColor: other.selectedElementColor,
      selectedElementTextColor: other.selectedElementTextColor,
      caretColor: other.caretColor,
      caretControlsBackgroundColor: other.caretControlsBackgroundColor,
      caretControlsSeparatorColor: other.caretControlsSeparatorColor,
      clockViewBackgroundColor: other.clockViewBackgroundColor,
      hourHandColor: other.hourHandColor,
      minuteHandColor: other.minuteHandColor,
      secondHandColor: other.secondHandColor,
      hourTextColor: other.hourTextColor,
      dayPeriodTextColor: other.dayPeriodTextColor,
      clockViewBorderColor: other.clockViewBorderColor,
      shadowColor: other.shadowColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MacosTimePickerThemeData &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          selectedElementColor == other.selectedElementColor &&
          selectedElementTextColor == other.selectedElementTextColor &&
          caretColor == other.caretColor &&
          caretControlsBackgroundColor == other.caretControlsBackgroundColor &&
          caretControlsSeparatorColor == other.caretControlsSeparatorColor &&
          clockViewBackgroundColor == other.clockViewBackgroundColor &&
          hourHandColor == other.hourHandColor &&
          minuteHandColor == other.minuteHandColor &&
          secondHandColor == other.secondHandColor &&
          hourTextColor == other.hourTextColor &&
          dayPeriodTextColor == other.dayPeriodTextColor &&
          clockViewBorderColor == other.clockViewBorderColor &&
          shadowColor == other.shadowColor;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      selectedElementColor.hashCode ^
      selectedElementTextColor.hashCode ^
      caretColor.hashCode ^
      caretControlsBackgroundColor.hashCode ^
      caretControlsSeparatorColor.hashCode ^
      clockViewBackgroundColor.hashCode ^
      hourHandColor.hashCode ^
      minuteHandColor.hashCode ^
      secondHandColor.hashCode ^
      hourTextColor.hashCode ^
      dayPeriodTextColor.hashCode ^
      clockViewBorderColor.hashCode ^
      shadowColor.hashCode;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('backgroundColor', backgroundColor));
    properties.add(ColorProperty('selectedElementColor', selectedElementColor));
    properties.add(
      ColorProperty('selectedElementTextColor', selectedElementTextColor),
    );
    properties.add(ColorProperty('caretColor', caretColor));
    properties.add(ColorProperty(
      'caretControlsBackgroundColor',
      caretControlsBackgroundColor,
    ));
    properties.add(ColorProperty(
      'caretControlsSeparatorColor',
      caretControlsSeparatorColor,
    ));
    properties
        .add(ColorProperty('monthViewControlsColor', clockViewBackgroundColor));
    properties.add(ColorProperty('monthViewHeaderColor', hourHandColor));
    properties.add(ColorProperty(
      'monthViewSelectedDateColor',
      minuteHandColor,
    ));
    properties.add(ColorProperty(
      'monthViewSelectedDateTextColor',
      secondHandColor,
    ));
    properties.add(ColorProperty(
      'monthViewCurrentDateColor',
      hourTextColor,
    ));
    properties.add(ColorProperty(
      'monthViewWeekdayHeaderColor',
      dayPeriodTextColor,
    ));
    properties.add(ColorProperty(
      'monthViewHeaderDividerColor',
      clockViewBorderColor,
    ));
    properties.add(ColorProperty('shadowColor', shadowColor));
  }
}
