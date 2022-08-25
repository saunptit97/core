import 'package:flutter/material.dart';

import 'colors.dart';

class StyleUtils {
  static const styleOpenSan = TextStyle(fontFamily: "OpenSan");

  static final textTitleStyle = styleOpenSan.copyWith(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static final textTitleRightAppBarStyle = styleOpenSan.copyWith(
    color: ColorUtils.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static final textTitleLeftAppBarStyle = styleOpenSan.copyWith(
    color: Colors.black.withOpacity(0.85),
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final styleOpenSan600 =
      styleOpenSan.copyWith(fontWeight: FontWeight.w600);

  static final styleOpenSan60016 = styleOpenSan.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static final styleOpenSan60014 = styleOpenSan.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static final styleOpenSan700 = styleOpenSan.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final styleOpenSan70024 = styleOpenSan700.copyWith(
    fontSize: 24,
  );

  static final styleOpenSan400 = styleOpenSan.copyWith(
    fontWeight: FontWeight.w400,
  );

  static final styleOpenSan40016 = styleOpenSan400.copyWith(
    fontSize: 16,
  );

  static final styleOpenSan40014 = styleOpenSan400.copyWith(
    fontSize: 14,
  );

  static var styleOpenSan70020 = styleOpenSan700.copyWith(
    fontSize: 20,
  );

  static var styleOpenSan40012 = styleOpenSan400.copyWith(
    fontSize: 12,
  );

  static var styleOpenSan60012 = styleOpenSan600.copyWith(
    fontSize: 12,
  );

  static var styleOpenSan70016 = styleOpenSan700.copyWith(
    fontSize: 16,
  );

  static var styleOpenSan70038 = styleOpenSan700.copyWith(
    fontSize: 38,
  );

  static var styleOpenSan40012Black45 = styleOpenSan40012.copyWith(
    color: Colors.black.withOpacity(0.45),
  );

  static var styleOpenSan40014Black45 = styleOpenSan40014.copyWith(
    color: Colors.black.withOpacity(0.45),
  );

  static var styleOpenSan60016Black85 = styleOpenSan60016.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan60014Black45 = styleOpenSan60014.copyWith(
    color: Colors.black.withOpacity(0.45),
  );

  static var styleOpenSan60014Black85 = styleOpenSan60014.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan70016Black85 = styleOpenSan70016.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan70020Black85 = styleOpenSan70020.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan60012Black45 = styleOpenSan60012.copyWith(
    color: Colors.black.withOpacity(0.45),
  );

  static var styleOpenSan40014Black85 = styleOpenSan40014.copyWith(
    color: Colors.black.withOpacity(0.85),
  );
  static var styleOpenSan70014 = styleOpenSan700.copyWith(
    fontSize: 14,
  );
  static var styleOpenSan70014Black85 = styleOpenSan70014.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan40012Black85 = styleOpenSan40012.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan70018 = styleOpenSan700.copyWith(
    fontSize: 18,
  );

  static var styleOpenSan60012Black85 = styleOpenSan60012.copyWith(
    color: Colors.black.withOpacity(0.85),
  );
  static var styleOpenSan60020 = styleOpenSan600.copyWith(
    fontSize: 20,
  );

  static var styleOpenSan60020Black85 = styleOpenSan60020.copyWith(
    color: Colors.black.withOpacity(0.85),
  );

  static var styleOpenSan70032 = styleOpenSan700.copyWith(
    fontSize: 32,
  );
}
