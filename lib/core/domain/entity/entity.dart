/// Base class for domain entities
/// 
/// Entities represent core business objects that are independent of any
/// database, framework, or delivery mechanism. They contain only business logic
/// and rules relevant to the enterprise.
/// 
/// Entities should:
/// - Not depend on the framework
/// - Not depend on the database
/// - Not depend on the web
/// - Not depend on UI
/// - Not depend on specific implementations
/// 
/// Example:
/// ```dart
/// class UserEntity extends Entity {
///   final String id;
///   final String name;
///   final String email;
///   
///   UserEntity({
///     required this.id,
///     required this.name,
///     required this.email,
///   });
///   
///   @override
///   List<Object> get props => [id, name, email];
/// }
/// ```
abstract class Entity {
  /// Props for equality comparison
  /// 
  /// Used by equatable to compare entities. Two entities with the same
  /// props are considered equal.
  List<Object> get props;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Entity &&
        runtimeType == other.runtimeType &&
        props == other.props;
  }

  @override
  int get hashCode => Object.hashAll(props);
}
