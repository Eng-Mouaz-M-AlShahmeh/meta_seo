/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package

/// Import the class of [MetaSEO]
import 'meta_seo.dart';

/// Throw an error if the platform is not web
MetaSEO getPlatformMeta() => throw UnsupportedError(
    'Cannot create MetaSEO without the package dart:html. Just wrap the MetaSEO with "if(kIsWeb) condition."');
