/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package

// ignore_for_file: avoid_web_libraries_in_flutter

/// Adding necessary packages
import 'package:meta_seo/meta_seo.dart';
import 'dart:js' as js;

/// Code starts here

class WebMetaSEO implements MetaSEO {
  /// Definition of [WebMetaSEO] instance
  WebMetaSEO();

  /// Definition of [metaName] meta tag attribute
  /// If you do not found meta name you want just use metaName
  /// Definition of [metaNameContent] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  /// Add web mata data of other meta named with content
  /// Implement the interface
  @override
  void seoMetaNameContent(String metaName, String metaNameContent) {
    js.context.callMethod('seoNameJS', [metaName, metaNameContent]);
  }

  /// Definition of [metaProperty] meta tag attribute
  /// If you do not found meta property you want just use metaProperty
  /// Definition of [metaPropertyContent] meta tag attribute
  /// The value is used for other property meta not listed in attributes by metaPropertyContent
  /// Add web mata data of other meta property with content
  /// Implement the interface
  @override
  void seoMetaPropertyContent(String metaProperty, String metaPropertyContent) {
    js.context.callMethod('seoPropertyJS', [metaProperty, metaPropertyContent]);
  }

  /// Definition of [metaKey] meta tag attribute
  /// If you do not found meta key you want just use metaKey
  /// Definition of [metaValue] meta tag attribute
  /// The value is used for other key-value meta not listed in attributes by metaValue
  /// Add web mata data of other meta key with value
  /// Implement the interface
  @override
  void seoMetaKeyValue(String metaKey, String metaValue) {
    js.context.callMethod('seoAttributeJS', [metaKey, metaValue]);
  }

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [author] attribute
  /// Example: String? author = 'Eng Mouaz M AlShahmeh';
  /// Implement the interface
  @override
  void seoAuthor(String author) {
    js.context.callMethod('seoNameJS', ['author', author]);
  }

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [description] attribute
  /// Example: String? description = 'Simple SEO description mata data';
  /// Implement the interface
  @override
  void seoDescription(String description) {
    js.context.callMethod('seoNameJS', ['description', description]);
  }

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  /// Add web mata data of [keywords] attribute
  /// Example: String? keywords = 'Flutter, Dart, Simple SEO';
  /// Implement the interface
  @override
  void seoKeywords(String keywords) {
    js.context.callMethod('seoNameJS', ['keywords', keywords]);
  }

  /// Definition of [viewport] meta tag attribute
  /// Separate list of viewport strings by commas
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag
  /// Add web mata data of [viewport] attribute
  /// Example: String? viewport = 'width=device-width, initial-scale=1';
  /// Implement the interface
  @override
  void seoViewport(String viewport) {
    js.context.callMethod('seoNameJS', ['viewport', viewport]);
  }

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  /// Add web mata data of [httpEquiv] attribute
  /// Example: String? httpEquiv = 'X-UA-Compatible';
  /// Implement the interface
  @override
  void seoHttpEquiv(String httpEquiv) {
    js.context.callMethod('seoAttributeJS', ['http-equiv', httpEquiv]);
  }

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  /// Add web mata data of [charset] attribute
  /// Example: String? charset = 'UTF-8';
  /// Implement the interface
  @override
  void seoCharset(String charset) {
    js.context.callMethod('seoAttributeJS', ['charset', charset]);
  }

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogTitle] attribute
  /// Implement the interface
  @override
  void seoOGTitle(String ogTitle) {
    js.context.callMethod('seoPropertyJS', ['og:title', ogTitle]);
  }

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogDescription] attribute
  /// Implement the interface
  @override
  void seoOGDescription(String ogDescription) {
    js.context.callMethod('seoPropertyJS', ['og:description', ogDescription]);
  }

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogImage] attribute
  /// Implement the interface
  @override
  void seoOGImage(String ogImage) {
    js.context.callMethod('seoPropertyJS', ['og:image', ogImage]);
  }

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterTitle] attribute
  /// Implement the interface
  @override
  void seoTwitterTitle(String twitterTitle) {
    js.context.callMethod('seoNameJS', ['twitter:title', twitterTitle]);
  }

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterDescription] attribute
  /// Implement the interface
  @override
  void seoTwitterDescription(String twitterDescription) {
    js.context
        .callMethod('seoNameJS', ['twitter:description', twitterDescription]);
  }

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterImage] attribute
  /// Implement the interface
  @override
  void seoTwitterImage(String twitterImage) {
    js.context.callMethod('seoNameJS', ['twitter:image', twitterImage]);
  }

  /// Definition of [robots] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  /// Add web mata data of [robots] attribute
  /// Example: String? robots = 'noindex, nofollow';
  /// Implement the interface
  @override
  void seoRobots(String robots) {
    js.context.callMethod('seoNameJS', ['robots', robots]);
  }
}

MetaSEO getPlatformMeta() => WebMetaSEO();

/// End of code
