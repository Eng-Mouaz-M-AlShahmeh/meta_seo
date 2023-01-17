/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package

/// Define our [MetaSEO] library
library mata_seo;

/// Import the implementation if the platform is web
import 'meta_seo_locator.dart' if (dart.library.html) "web_meta_seo.dart";

/// Make it as interface to implement later on only Web platform
abstract class MetaSEO {
  /// Add web seo mata config method which remove any javascript
  /// code with the same id [metaSEOScripts] and replace if exists with
  /// needed one before the end of the body of the html web file automatically.
  /// This method should be run before any meta seo method to run the package correctly
  void seoMetaConfig();

  /// Definition of [metaName] meta tag attribute
  /// If you do not found meta name you want just use metaName
  /// Definition of [metaNameContent] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  /// Add web mata data of other meta named with content
  void seoMetaNameContent(String metaName, String metaNameContent);

  /// Definition of [metaProperty] meta tag attribute
  /// If you do not found meta property you want just use metaProperty
  /// Definition of [metaPropertyContent] meta tag attribute
  /// The value is used for other property meta not listed in attributes by metaPropertyContent
  /// Add web mata data of other meta property with content
  void seoMetaPropertyContent(String metaProperty, String metaPropertyContent);

  /// Definition of [metaKey] meta tag attribute
  /// If you do not found meta key you want just use metaKey
  /// Definition of [metaValue] meta tag attribute
  /// The value is used for other key-value meta not listed in attributes by metaValue
  /// Add web mata data of other meta key with value
  void seoMetaKeyValue(String metaKey, String metaValue);

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [author] attribute
  void seoAuthor(String author);

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [description] attribute
  void seoDescription(String description);

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  /// Add web mata data of [keywords] attribute
  void seoKeywords(String keywords);

  /// Definition of [viewport] meta tag attribute
  /// Separate list of viewport strings by commas
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag
  /// Add web mata data of [viewport] attribute
  void seoViewport(String viewport);

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  /// Add web mata data of [httpEquiv] attribute
  void seoHttpEquiv(String httpEquiv);

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  /// Add web mata data of [charset] attribute
  void seoCharset(String charset);

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogTitle] attribute
  void seoOGTitle(String ogTitle);

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogDescription] attribute
  void seoOGDescription(String ogDescription);

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogImage] attribute
  void seoOGImage(String ogImage);

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterTitle] attribute
  void seoTwitterTitle(String twitterTitle);

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterDescription] attribute
  void seoTwitterDescription(String twitterDescription);

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterImage] attribute
  void seoTwitterImage(String twitterImage);

  /// Definition of [robots] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  /// Add web mata data of [robots] attribute
  void seoRobots(String robots);

  /// Check the platform if is web so get the correct code
  factory MetaSEO() => getPlatformMeta();
}
