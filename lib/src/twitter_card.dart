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
