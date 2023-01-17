/// Copyright (c) 2022, Oct. Developed by Eng Mouaz M. Al-Shahmeh
/// https://malshahmeh.web.app
/// MetaSEO package

// ignore_for_file: avoid_web_libraries_in_flutter

/// Adding necessary packages
import 'package:meta_seo/meta_seo.dart';
import 'dart:js' as js;
import 'dart:html';

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
  void seoMetaConfig() {
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

  /// Definition of [metaName] meta tag attribute
  /// If you do not found meta name you want just use metaName
  /// Definition of [metaNameContent] meta tag attribute
  /// The value is used for other named meta not listed in attributes by metaNameContent
  /// Add web mata data of other meta named with content
  /// Implement the interface
  @override
  void seoMetaNameContent(String metaName, String metaNameContent) {
    /// Call the javascript function with needed attributes
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
    /// Call the javascript function with needed attributes
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
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', [metaKey, metaValue]);
  }

  /// Definition of [author] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [author] attribute
  /// Example: String? author = 'Eng Mouaz M AlShahmeh';
  /// Implement the interface
  @override
  void seoAuthor(String author) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['author', author]);
  }

  /// Definition of [description] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#adding_an_author_and_description
  /// Add web mata data of [description] attribute
  /// Example: String? description = 'Simple SEO description mata data';
  /// Implement the interface
  @override
  void seoDescription(String description) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['description', description]);
  }

  /// Definition of [keywords] meta tag attribute
  /// Separate list of keyword strings by commas
  /// Add web mata data of [keywords] attribute
  /// Example: String? keywords = 'Flutter, Dart, Simple SEO';
  /// Implement the interface
  @override
  void seoKeywords(String keywords) {
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
  void seoViewport(String viewport) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['viewport', viewport]);
  }

  /// Definition of [http-equiv] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-http-equiv
  /// Add web mata data of [httpEquiv] attribute
  /// Example: String? httpEquiv = 'X-UA-Compatible';
  /// Implement the interface
  @override
  void seoHttpEquiv(String httpEquiv) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', ['http-equiv', httpEquiv]);
  }

  /// Definition of [charset] meta tag attribute
  /// https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta#attr-charset
  /// Add web mata data of [charset] attribute
  /// Example: String? charset = 'UTF-8';
  /// Implement the interface
  @override
  void seoCharset(String charset) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoAttributeJS', ['charset', charset]);
  }

  /// Definition of [og:title] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogTitle] attribute
  /// Implement the interface
  @override
  void seoOGTitle(String ogTitle) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoPropertyJS', ['og:title', ogTitle]);
  }

  /// Definition of [og:description] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogDescription] attribute
  /// Implement the interface
  @override
  void seoOGDescription(String ogDescription) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoPropertyJS', ['og:description', ogDescription]);
  }

  /// Definition of [og:image] meta tag attribute
  /// https://ogp.me
  /// https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#other_types_of_metadata
  /// Add web mata data of [ogImage] attribute
  /// Implement the interface
  @override
  void seoOGImage(String ogImage) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoPropertyJS', ['og:image', ogImage]);
  }

  /// Definition of [twitter:title] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterTitle] attribute
  /// Implement the interface
  @override
  void seoTwitterTitle(String twitterTitle) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['twitter:title', twitterTitle]);
  }

  /// Definition of [twitter:description] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterDescription] attribute
  /// Implement the interface
  @override
  void seoTwitterDescription(String twitterDescription) {
    /// Call the javascript function with needed attributes
    js.context
        .callMethod('seoNameJS', ['twitter:description', twitterDescription]);
  }

  /// Definition of [twitter:image] meta tag attribute
  /// https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/markup
  /// Add web mata data of [twitterImage] attribute
  /// Implement the interface
  @override
  void seoTwitterImage(String twitterImage) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['twitter:image', twitterImage]);
  }

  /// Definition of [robots] meta tag attribute
  /// https://developers.google.com/search/docs/crawling-indexing/robots-meta-tag
  /// Add web mata data of [robots] attribute
  /// Example: String? robots = 'noindex, nofollow';
  /// Implement the interface
  @override
  void seoRobots(String robots) {
    /// Call the javascript function with needed attributes
    js.context.callMethod('seoNameJS', ['robots', robots]);
  }
}

/// If the platform is web return back the [WebMetaSEO]
/// with implementation of the [MetaSEO] class
MetaSEO getPlatformMeta() => WebMetaSEO();

/// End of code
