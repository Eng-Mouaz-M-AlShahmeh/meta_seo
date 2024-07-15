import 'package:meta_seo/meta_seo.dart';

/// Throw an error if the platform is not web
MetaSEO getPlatformMeta() => throw UnsupportedError(
    'Cannot create MetaSEO without the package dart:html. Just wrap the MetaSEO with "if(kIsWeb) condition."');
