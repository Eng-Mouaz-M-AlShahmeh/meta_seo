import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';

extension MetaSEOExtension on Widget {
  Widget metaSEO({
    required String title,
    String? description,
    String? image,
    String? author,
    String? keywords,
    TwitterCard? twitterCard,
    Color color = Colors.white,
  }) =>
      _MetaSEOExtension(
        title: title,
        description: description,
        image: image,
        author: author,
        keywords: keywords,
        twitterCard: twitterCard,
        color: color,
        child: this,
      );
}

class _MetaSEOExtension extends StatelessWidget {
  const _MetaSEOExtension({
    required this.title,
    this.description,
    this.image,
    this.author,
    this.keywords,
    this.twitterCard,
    required this.color,
    required this.child,
  });

  final String title;
  final String? description, image, author, keywords;
  final TwitterCard? twitterCard;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      final meta = MetaSEO();

      meta.ogTitle(ogTitle: title);
      meta.twitterTitle(twitterTitle: title);

      if (description != null) {
        meta.description(description: description!);
        meta.twitterDescription(twitterDescription: description!);
        meta.ogDescription(ogDescription: description!);
      }

      if (image != null) {
        meta.ogImage(ogImage: image!);
        meta.twitterImage(twitterImage: image!);
      }

      if (author != null) meta.author(author: author!);
      if (keywords != null) meta.keywords(keywords: keywords!);
      if (twitterCard != null) meta.twitterCard(twitterCard: twitterCard!);
    }

    return Title(title: title, color: color, child: child);
  }
}
