import 'dart:html';
import 'dart:js' as js;

import 'package:meta_seo/meta_seo.dart';

/// Code starts here
class WebMetaSEO implements MetaSEO {
  /// Definition of [WebMetaSEO] instance
  WebMetaSEO();

  /// Add web seo mata config method which remove any javascript
  /// code with the same id [metaSEOScripts] and replace if exists with
  /// needed one before the end of the body of the html web file automatically.
  /// This method should be run before any meta seo method to run the package correctly
  /// Implement the interface
  @override
  config() {
    /// Define the ScriptElement
    ScriptElement script = ScriptElement();

    /// Define the id of the ScriptElement
    script.id = 'metaSEOScripts';

    /// Define the javascript code of the ScriptElement
    script.innerHtml = """
  function seoNameJS(name, content) {
    if(document.querySelector("[name='"+name+"']") !== null) {
      document.querySelector("[name='"+name+"']").remove();
    }
    var meta = document.createElement('meta');
    meta.setAttribute('name', name);
    meta.setAttribute('content', content);
    document.getElementsByTagName('head')[0].appendChild(meta);
  }
  function seoPropertyJS(property, content) {
    if(document.querySelector("[property='"+property+"']") !== null) {
      document.querySelector("[property='"+property+"']").remove();
    }
    var meta = document.createElement('meta');
    meta.setAttribute('property', property);
    meta.setAttribute('content', content);
    document.getElementsByTagName('head')[0].appendChild(meta);
  }
  function seoAttributeJS(key, val) {
    if(document.querySelector("[name='"+key+"']") !== null) {
      document.querySelector("[name='"+key+"']").remove();
    }
    var meta = document.createElement('meta');
    meta.setAttribute(key, val);
    document.getElementsByTagName('head')[0].appendChild(meta);
  }
  function seoOpenGraphJS(property, content) {
    if(document.querySelector("[property='"+property+"']") !== null) {
      document.querySelector("[property='"+property+"']").remove();
    }
    var meta = document.createElement('meta');
    meta.setAttribute('property', property);
    meta.setAttribute('content', content);
    meta.setAttribute('data-rh', 'true');
    document.getElementsByTagName('head')[0].appendChild(meta);
  }
  function seoRobotsJS(name, content) {
    var meta = document.createElement('meta');
    meta.setAttribute('name', name);
    meta.setAttribute('content', content);
    document.getElementsByTagName('head')[0].appendChild(meta);
  }
    """;

    /// Make loop in html file body to check of any node with the same id
    for (int i = 0; i < document.body!.children.length; i++) {
      /// Check if the id of the package is exists in the html document
      if (document.body!.children[i].id == 'metaSEOScripts') {
        /// Remove any node with the same id of the javascript functions
        document.body!.children[i].remove();

        /// Then break the loop after deleting
        break;
      }
    }

    /// Add new or replace the javascript needed functions to the end
    /// of the body of the html document
    document.body!.insertAdjacentElement('beforeEnd', script);
  }

  /// Definition of [name] meta tag attribute
  /// If you do not found meta name you want just use metaName
  /// Definition of [content] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  /// Add web mata data of other meta named with content
  /// Implement the interface
  @override
  nameContent(
      {
      /// Definition of [name] meta tag attribute
      required String name,

      /// Definition of [content] meta tag attribute
      required String content}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', [name, content]);
  }

  /// Definition of [property] meta tag attribute
  /// If you do not found meta property you want just use metaProperty
  /// Definition of [content] meta tag attribute
  /// The value is used for other property meta not listed in attributes by metaPropertyContent
  /// Add web mata data of other meta property with content
  /// Implement the interface
  @override
  propertyContent(
      {
      /// Definition of [property] meta tag attribute
      required String property,

      /// Definition of [content] meta tag attribute
      required String content}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoPropertyJS', [property, content]);
  }

  /// Definition of [key] meta tag attribute
  /// If you do not found meta key you want just use metaKey
  /// Definition of [value] meta tag attribute
  /// The value is used for other key-value meta not listed in attributes by metaValue
  /// Add web mata data of other meta key with value
  /// Implement the interface
  @override
  keyValue(
      {
      /// Definition of [key] meta tag attribute
      required String key,

      /// Definition of [value] meta tag attribute
      required String value}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', [key, value]);
  }

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [author] attribute
  /// Example: String? author = 'Eng Mouaz M AlShahmeh';
  /// Implement the interface
  @override
  author(
      {
      /// Definition of [author] meta tag attribute
      required String author}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['author', author]);
  }

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [description] attribute
  /// Example: String? description = 'Simple SEO description mata data';
  /// Implement the interface
  @override
  description(
      {
      /// Definition of [description] meta tag attribute
      required String description}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['description', description]);
  }

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  /// Add web mata data of [keywords] attribute
  /// Example: String? keywords = 'Flutter, Dart, Simple SEO';
  /// Implement the interface
  @override
  keywords(
      {
      /// Definition of [keywords] meta tag attribute
      required String keywords}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['keywords', keywords]);
  }

  /// Definition of [viewport] meta tag attribute
  /// Separate list of viewport strings by commas
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag
  /// Add web mata data of [viewport] attribute
  /// Example: String? viewport = 'width=device-width, initial-scale=1';
  /// Implement the interface
  @override
  viewport(
      {
      /// Definition of [viewport] meta tag attribute
      required String viewport}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['viewport', viewport]);
  }

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  /// Add web mata data of [httpEquiv] attribute
  /// Example: String? httpEquiv = 'X-UA-Compatible';
  /// Implement the interface
  @override
  httpEquiv(
      {
      /// Definition of [http-equiv] meta tag attribute
      required String httpEquiv}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', ['http-equiv', httpEquiv]);
  }

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  /// Add web mata data of [charset] attribute
  /// Example: String? charset = 'UTF-8';
  /// Implement the interface
  @override
  charset(
      {
      /// Definition of [charset] meta tag attribute
      required String charset}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', ['charset', charset]);
  }

  /// Definition of [fb:app_id] meta tag attribute
  /// https://developers.facebook.com/docs/sharing/webmasters/
  /// Add web mata data of [facebookAppID] attribute
  /// Implement the interface
  @override
  facebookAppID(
      {
      /// Definition of [fb:app_id] meta tag attribute
      required String facebookAppID}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoPropertyJS', ['fb:app_id', facebookAppID]);
  }

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogTitle] attribute
  /// Implement the interface
  @override
  ogTitle(
      {
      /// Definition of [og:title] meta tag attribute
      required String ogTitle}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoOpenGraphJS', ['og:title', ogTitle]);
  }

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogDescription] attribute
  /// Implement the interface
  @override
  ogDescription(
      {
      /// Definition of [og:description] meta tag attribute
      required String ogDescription}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoOpenGraphJS', ['og:description', ogDescription]);
  }

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogImage] attribute
  /// Implement the interface
  @override
  ogImage(
      {
      /// Definition of [og:image] meta tag attribute
      required String ogImage}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoOpenGraphJS', ['og:image', ogImage]);
  }

  /// Definition of [twitter:card] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/guides/getting-started
  /// Add web mata data of [twitterCard] attribute
  /// Implement the interface
  @override
  twitterCard(
      {
      /// Definition of [twitter:card] meta tag attribute
      required TwitterCard twitterCard}) {
    /// Make switch loop according to twitterCard state
    switch (twitterCard) {
      /// If the case is summary then run the following
      case TwitterCard.summary:

        /// Call the javascript function with summary attribute
        js.context.callMethod('seoNameJS', ['twitter:card', 'summary']);

        /// Break the switch loop if done
        break;

      /// If the case is summaryLargeImage then run the following
      case TwitterCard.summaryLargeImage:

        /// Call the javascript function with summary_large_image attribute
        js.context
            .callMethod('seoNameJS', ['twitter:card', 'summary_large_image']);

        /// Break the switch loop if done
        break;

      /// If the case is app then run the following
      case TwitterCard.app:

        /// Call the javascript function with app attribute
        js.context.callMethod('seoNameJS', ['twitter:card', 'app']);

        /// Break the switch loop if done
        break;

      /// If the case is player then run the following
      case TwitterCard.player:

        /// Call the javascript function with player attribute
        js.context.callMethod('seoNameJS', ['twitter:card', 'player']);

        /// Break the switch loop if done
        break;
    }
  }

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterTitle] attribute
  /// Implement the interface
  @override
  twitterTitle(
      {
      /// Definition of [twitter:title] meta tag attribute
      required String twitterTitle}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['twitter:title', twitterTitle]);
  }

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterDescription] attribute
  /// Implement the interface
  @override
  twitterDescription(
      {
      /// Definition of [twitter:description] meta tag attribute
      required String twitterDescription}) {
    /// Call the javascript function with needed attributes
    js.context
        .callMethod('seoNameJS', ['twitter:description', twitterDescription]);
  }

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterImage] attribute
  /// Implement the interface
  @override
  twitterImage(
      {
      /// Definition of [twitter:image] meta tag attribute
      required String twitterImage}) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['twitter:image', twitterImage]);
  }

  /// Definition of [robotsName] meta tag attribute
  /// Definition of [content] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  /// Add web mata data of [robotsName] attribute
  /// Add web mata data of [content] attribute
  /// Implement the interface
  @override
  robots(
      {
      /// Definition of [robotsName] meta tag attribute
      required RobotsName robotsName,

      /// Definition of [content] meta tag attribute
      required String content}) {
    /// Make switch loop according to robotsName state
    switch (robotsName) {
      /// If the case is google then run the following
      case RobotsName.google:

        /// Call the javascript function with google attribute
        js.context.callMethod('seoRobotsJS', ['google', content]);

        /// Break the switch loop if done
        break;

      /// If the case is googleBot then run the following
      case RobotsName.googleBot:

        /// Call the javascript function with googleBot attribute
        js.context.callMethod('seoRobotsJS', ['googlebot', content]);

        /// Break the switch loop if done
        break;

      /// If the case is googleBotNews then run the following
      case RobotsName.googleBotNews:

        /// Call the javascript function with googleBotNews attribute
        js.context.callMethod('seoRobotsJS', ['googlebot-news', content]);

        /// Break the switch loop if done
        break;

      /// If the case is googleSiteVerification then run the following
      case RobotsName.googleSiteVerification:

        /// Call the javascript function with googleSiteVerification attribute
        js.context
            .callMethod('seoNameJS', ['google-site-verification', content]);

        /// Break the switch loop if done
        break;

      /// If the case is robots then run the following
      case RobotsName.robots:

        /// Call the javascript function with robots attribute
        js.context.callMethod('seoRobotsJS', ['robots', content]);

        /// Break the switch loop if done
        break;
    }
  }
}

/// If the platform is web return back the [WebMetaSEO]
/// with implementation of the [MetaSEO] class
MetaSEO getPlatformMeta() => WebMetaSEO();
