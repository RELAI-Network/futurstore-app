class ApplicationPublisher {
  ApplicationPublisher({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApplicationPublisher &&
        other.id == id &&
        other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => 'ApplicationPublisher(id: $id, name: $name)';

  ApplicationPublisher copyWith({
    String? id,
    String? name,
  }) {
    return ApplicationPublisher(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
