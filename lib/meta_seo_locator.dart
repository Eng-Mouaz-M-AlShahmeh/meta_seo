/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package

import 'meta_seo.dart';

MetaSEO getPlatformMeta(
        {String? author,
        String? description,
        String? keywords,
        String? charset,
        String? httpEquiv,
        String? viewport,
        String? ogTitle,
        String? ogDescription,
        String? ogImage,
        String? twitterTitle,
        String? twitterDescription,
        String? twitterImage,
        String? robots,
        String? metaName,
        String? metaNameContent,
        String? metaProperty,
        String? metaPropertyContent,
        String? metaKey,
        String? metaValue}) =>
    throw UnsupportedError(
        'Cannot create MetaSEO without the package dart:html');
