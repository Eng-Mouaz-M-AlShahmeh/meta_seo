import 'package:meta_seo/schema_org/schemas.dart';

/// Indicates whether this game is multi-player, co-op or single-player.
/// See https://schema.org/GamePlayMode
enum SchemaGamePlayMode implements SchemaSerializable {
  /// CoOp. Co-operative games, where you play on the same team with
  /// friends.
  coOp('https://schema.org/GamePlayMode'),

  /// MultiPlayer. Requiring or allowing multiple human players to play
  /// simultaneously.
  multiPlayer('https://schema.org/GamePlayMode'),

  /// SinglePlayer. Which is played by a lone player.
  singlePlayer('https://schema.org/GamePlayMode');

  /// Constructor for [SchemaGamePlayMode]
  const SchemaGamePlayMode(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGamePlayMode] to JSON-LD
  @override
  String toJsonLd() => value;
}
