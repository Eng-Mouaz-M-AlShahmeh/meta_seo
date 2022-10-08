/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// MetaSEO package
// ignore_for_file: avoid_web_libraries_in_flutter

library mata_seo;

/// Adding necessary packages
import 'package:flutter/material.dart';
import 'dart:js' as js;

/// Code starts here
class MetaSEO {
  MetaSEO(
      {Key? key,
      this.author,
      this.description,
      this.keywords,
      this.charset,
      this.httpEquiv,
      this.viewport,
      this.ogTitle,
      this.ogDescription,
      this.ogImage,
      this.twitterTitle,
      this.twitterDescription,
      this.twitterImage,
      this.robots,
      this.metaName,
      this.metaNameContent,
      this.metaProperty,
      this.metaPropertyContent,
      this.metaKey,
      this.metaValue});

  /// Definition of [metaName] meta tag attribute
  /// If you do not found meta name you want just use metaName
  String? metaName = '';

  /// Definition of [metaNameContent] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  String? metaNameContent = '';

  /// Definition of [metaProperty] meta tag attribute
  /// If you do not found meta property you want just use metaProperty
  String? metaProperty = '';

  /// Definition of [metaPropertyContent] meta tag attribute
  /// The value is used for other property meta not listed in attributes by metaPropertyContent
  String? metaPropertyContent = '';

  /// Definition of [metaKey] meta tag attribute
  /// If you do not found meta key you want just use metaKey
  String? metaKey = '';

  /// Definition of [metaValue] meta tag attribute
  /// The value is used for other key-value meta not listed in attributes by metaValue
  String? metaValue = '';

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  String? author = 'Eng Mouaz M AlShahmeh';

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  String? description = 'Simple SEO description mata data';

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  String? keywords = 'Flutter, Dart, Simple SEO';

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  String? charset = 'UTF-8';

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  String? httpEquiv = 'X-UA-Compatible';

  /// Definition of [viewport] meta tag attribute
  /// Separate list of viewport strings by commas
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag
  String? viewport = 'width=device-width, initial-scale=1';

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  String? ogTitle;

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  String? ogDescription;

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  String? ogImage;

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  String? twitterTitle;

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  String? twitterDescription;

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  String? twitterImage;

  /// Definition of [robots] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  String? robots = 'noindex, nofollow';

  /// Add web mata data of other meta named with content
  void seoMetaNameContent() {
    js.context.callMethod('seoNameJS', [metaName, metaNameContent]);
  }

  /// Add web mata data of other meta property with content
  void seoMetaPropertyContent() {
    js.context.callMethod('seoPropertyJS', [metaProperty, metaPropertyContent]);
  }

  /// Add web mata data of other meta key with value
  void seoMetaKeyValue() {
    js.context.callMethod('seoAttributeJS', [metaKey, metaValue]);
  }

  /// Add web mata data of [author] attribute
  void seoAuthor() {
    js.context.callMethod('seoNameJS', ['author', author]);
  }

  /// Add web mata data of [description] attribute
  void seoDescription() {
    js.context.callMethod('seoNameJS', ['description', description]);
  }

  /// Add web mata data of [keywords] attribute
  void seoKeywords() {
    js.context.callMethod('seoNameJS', ['keywords', keywords]);
  }

  /// Add web mata data of [viewport] attribute
  void seoViewport() {
    js.context.callMethod('seoNameJS', ['viewport', viewport]);
  }

  /// Add web mata data of [httpEquiv] attribute
  void seoHttpEquiv() {
    js.context.callMethod('seoAttributeJS', ['http-equiv', httpEquiv]);
  }

  /// Add web mata data of [httpEquiv] attribute
  void seoCharset() {
    js.context.callMethod('seoAttributeJS', ['charset', charset]);
  }

  /// Add web mata data of [ogTitle] attribute
  void seoOGTitle() {
    js.context.callMethod('seoPropertyJS', ['og:title', ogTitle]);
  }

  /// Add web mata data of [ogDescription] attribute
  void seoOGDescription() {
    js.context.callMethod('seoPropertyJS', ['og:description', ogDescription]);
  }

  /// Add web mata data of [ogImage] attribute
  void seoOGImage() {
    js.context.callMethod('seoPropertyJS', ['og:image', ogImage]);
  }

  /// Add web mata data of [twitterTitle] attribute
  void seoTwitterTitle() {
    js.context.callMethod('seoNameJS', ['twitter:title', twitterTitle]);
  }

  /// Add web mata data of [twitterDescription] attribute
  void seoTwitterDescription() {
    js.context
        .callMethod('seoNameJS', ['twitter:description', twitterDescription]);
  }

  /// Add web mata data of [twitterImage] attribute
  void seoTwitterImage() {
    js.context.callMethod('seoNameJS', ['twitter:image', twitterImage]);
  }

  /// Add web mata data of [robots] attribute
  void seoRobots() {
    js.context.callMethod('seoNameJS', ['robots', robots]);
  }

}

/// End of code
