class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() => 
      'Suggestion(description: $description, placeId: $placeId)';
}