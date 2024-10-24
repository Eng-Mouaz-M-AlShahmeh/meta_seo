// import 'dart:js' as js;
import 'dart:js_interop';
import 'dart:js_interop_unsafe' as js;

// import 'dart:js_interop';

// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:meta_seo/meta_seo.dart';
import 'package:web/web.dart';

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
    HTMLScriptElement script = HTMLScriptElement();

    /// Define the id of the ScriptElement
    script.id = 'metaSEOScripts';

    /// Define the javascript code of the ScriptElement
    script.innerHTML = """
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
    """
        .toJS;

    /// Make loop in html file body to check of any node with the same id
    for (int i = 0; i < document.body!.children.length; i++) {
      /// Check if the id of the package is exists in the html document
      if (document.body!.children.item(i)?.id == 'metaSEOScripts') {
        /// Remove any node with the same id of the javascript functions
        document.body!.children.item(i)?.remove();

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
    globalContext.callMethod('seoNameJS'.toJS, name.toJS, content.toJS);
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
    globalContext.callMethod('seoPropertyJS'.toJS, property.toJS, content.toJS);
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
    globalContext.callMethod('seoAttributeJS'.toJS, key.toJS, value.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'author'.toJS, author.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'description'.toJS, description.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'keywords'.toJS, keywords.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'viewport'.toJS, viewport.toJS);
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
    globalContext.callMethod('seoAttributeJS'.toJS, 'http-equiv'.toJS, httpEquiv.toJS);
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
    globalContext.callMethod('seoAttributeJS'.toJS, 'charset'.toJS, charset.toJS);
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
    globalContext.callMethod('seoPropertyJS'.toJS, 'fb:app_id'.toJS, facebookAppID.toJS);
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
    globalContext.callMethod('seoOpenGraphJS'.toJS, 'og:title'.toJS, ogTitle.toJS);
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
    globalContext.callMethod('seoOpenGraphJS'.toJS, 'og:description'.toJS, ogDescription.toJS);
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
    globalContext.callMethod('seoOpenGraphJS'.toJS, 'og:image'.toJS, ogImage.toJS);
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
        globalContext.callMethod('seoNameJS'.toJS, 'twitter:card'.toJS, 'summary'.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is summaryLargeImage then run the following
      case TwitterCard.summaryLargeImage:

        /// Call the javascript function with summary_large_image attribute
        globalContext.callMethod('seoNameJS'.toJS, 'twitter:card'.toJS, 'summary_large_image'.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is app then run the following
      case TwitterCard.app:

        /// Call the javascript function with app attribute
        globalContext.callMethod('seoNameJS'.toJS, 'twitter:card'.toJS, 'app'.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is player then run the following
      case TwitterCard.player:

        /// Call the javascript function with player attribute
        globalContext.callMethod('seoNameJS'.toJS, 'twitter:card'.toJS, 'player'.toJS);

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
    globalContext.callMethod('seoNameJS'.toJS, 'twitter:title'.toJS, twitterTitle.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'twitter:description'.toJS, twitterDescription.toJS);
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
    globalContext.callMethod('seoNameJS'.toJS, 'twitter:image'.toJS, twitterImage.toJS);
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
        globalContext.callMethod('seoRobotsJS'.toJS, 'google'.toJS, content.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is googleBot then run the following
      case RobotsName.googleBot:

        /// Call the javascript function with googleBot attribute
        globalContext.callMethod('seoRobotsJS'.toJS, 'googlebot'.toJS, content.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is googleBotNews then run the following
      case RobotsName.googleBotNews:

        /// Call the javascript function with googleBotNews attribute
        globalContext.callMethod('seoRobotsJS'.toJS, 'googlebot-news'.toJS, content.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is googleSiteVerification then run the following
      case RobotsName.googleSiteVerification:

        /// Call the javascript function with googleSiteVerification attribute
        globalContext.callMethod('seoNameJS'.toJS, 'google-site-verification'.toJS, content.toJS);

        /// Break the switch loop if done
        break;

      /// If the case is robots then run the following
      case RobotsName.robots:

        /// Call the javascript function with robots attribute
        globalContext.callMethod('seoRobotsJS'.toJS, 'robots'.toJS, content.toJS);

        /// Break the switch loop if done
        break;
    }
  }
}

/// If the platform is web return back the [WebMetaSEO]
/// with implementation of the [MetaSEO] class
MetaSEO getPlatformMeta() => WebMetaSEO();
