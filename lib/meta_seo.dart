/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package
/// Define our [MetaSEO] library
library mata_seo;

/// Import the implementation if the platform is web
import 'meta_seo_locator.dart' if (dart.library.js_interop) "web_meta_seo.dart";

/// Define enum options for Twitter Card
/// Only one card type per-page is supported.
/// If more than one twitter:card value exists in the page,
/// the “last” one in sequence will take priority.
/// https://developer.twitter.com/en/docs/twitter-for-websites/cards/guides/getting-started
enum TwitterCard {
  /// The card type, which will be one of
  summary,

  /// or will be one of
  summaryLargeImage,

  /// or will be one of
  app,

  /// or will be one of
  player;

  /// Define the [TwitterCard] constructor
  const TwitterCard();
}

/// Define enum options for Robots Name
/// The robots meta tag lets you utilize a granular,
/// page-specific approach to controlling how an individual page should
/// be indexed and served to users in Google Search results.
/// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
enum RobotsName {
  /// The robots meta tag lets you utilize a granular,
  /// page-specific approach to controlling how an individual page should
  /// be indexed and served to users in Google Search results.
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  robots,

  /// When users search for your site, Google Search results sometimes
  /// display a search box specific to your site, along with other
  /// direct links to your site. This tag tells Google not
  /// to show the sitelinks search box.
  /// https://developers.google.com/search/docs/crawling-indexing/special-tags
  google,

  /// Google's standard web crawler has the user agent name Googlebot
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  googleBot,

  /// Search engines may have different crawlers for different purposes.
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  googleBotNews,

  /// You can use this tag on the top-level page of your site to verify
  /// ownership for Search Console.
  /// https://developers.google.com/search/docs/crawling-indexing/special-tags
  googleSiteVerification;

  /// Define the [RobotsName] constructor
  const RobotsName();
}

/// Make it as interface to implement later on only Web platform
abstract class MetaSEO {
  /// Add web seo mata config method which remove any javascript
  /// code with the same id [metaSEOScripts] and replace if exists with
  /// needed one before the end of the body of the html web file automatically.
  /// This method should be run before any meta seo method to run the package correctly
  config();

  /// Definition of [name] meta tag attribute
  /// If you do not found meta name you want just use metaName
  /// Definition of [content] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  /// Add web mata data of other meta named with content
  nameContent(
      {
      /// Definition of [name] meta tag attribute
      required String name,

      /// Definition of [content] meta tag attribute
      required String content});

  /// Definition of [property] meta tag attribute
  /// If you do not found meta property you want just use metaProperty
  /// Definition of [content] meta tag attribute
  /// The value is used for other property meta not listed in attributes by metaPropertyContent
  /// Add web mata data of other meta property with content
  propertyContent(
      {
      /// Definition of [property] meta tag attribute
      required String property,

      /// Definition of [content] meta tag attribute
      required String content});

  /// Definition of [key] meta tag attribute
  /// If you do not found meta key you want just use metaKey
  /// Definition of [value] meta tag attribute
  /// The value is used for other key-value meta not listed in attributes by metaValue
  /// Add web mata data of other meta key with value
  keyValue(
      {
      /// Definition of [key] meta tag attribute
      required String key,

      /// Definition of [value] meta tag attribute
      required String value});

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [author] attribute
  author(
      {
      /// Definition of [author] meta tag attribute
      required String author});

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [description] attribute
  description(
      {
      /// Definition of [description] meta tag attribute
      required String description});

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  /// Add web mata data of [keywords] attribute
  keywords(
      {
      /// Definition of [keywords] meta tag attribute
      required String keywords});

  /// Definition of [viewport] meta tag attribute
  /// Separate list of viewport strings by commas
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag
  /// Add web mata data of [viewport] attribute
  viewport(
      {
      /// Definition of [viewport] meta tag attribute
      required String viewport});

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  /// Add web mata data of [httpEquiv] attribute
  httpEquiv(
      {
      /// Definition of [http-equiv] meta tag attribute
      required String httpEquiv});

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  /// Add web mata data of [charset] attribute
  charset(
      {
      /// Definition of [charset] meta tag attribute
      required String charset});

  /// Definition of [fb:app_id] meta tag attribute
  /// https://ogp.me
  /// https://developers.facebook.com/docs/sharing/webmasters/
  /// Add web mata data of [facebookAppID] attribute
  facebookAppID(
      {
      /// Definition of [fb:app_id] meta tag attribute
      required String facebookAppID});

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogTitle] attribute
  ogTitle(
      {
      /// Definition of [og:title] meta tag attribute
      required String ogTitle});

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogDescription] attribute
  ogDescription(
      {
      /// Definition of [og:description] meta tag attribute
      required String ogDescription});

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogImage] attribute
  ogImage(
      {
      /// Definition of [og:image] meta tag attribute
      required String ogImage});

  /// Definition of [twitter:card] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/guides/getting-started
  /// Add web mata data of [twitterCard] attribute
  twitterCard(
      {
      /// Definition of [twitter:card] meta tag attribute
      required TwitterCard twitterCard});

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterTitle] attribute
  twitterTitle(
      {
      /// Definition of [twitter:title] meta tag attribute
      required String twitterTitle});

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterDescription] attribute
  twitterDescription(
      {
      /// Definition of [twitter:description] meta tag attribute
      required String twitterDescription});

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterImage] attribute
  twitterImage(
      {
      /// Definition of [twitter:image] meta tag attribute
      required String twitterImage});

  /// Definition of [robotsName] meta tag attribute
  /// Definition of [content] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  /// Add web mata data of [robotsName] attribute
  /// Add web mata data of [content] attribute
  robots(
      {
      /// Definition of [robotsName] meta tag attribute
      required RobotsName robotsName,

      /// Definition of [content] meta tag attribute
      required String content});

  /// Check the platform if is web so get the correct code
  factory MetaSEO() => getPlatformMeta();
}
