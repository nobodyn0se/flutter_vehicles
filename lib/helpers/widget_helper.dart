class WidgetHelper {
  static String parseManufacturerName(String manufacturerName) {
    // remove trailing fullstops from the manufacturer's name for API response

    if (manufacturerName.endsWith('.')) {
      manufacturerName =
          manufacturerName.substring(0, manufacturerName.length - 1);
    }

    // remove leading and trailing whitespaces (if any)
    return manufacturerName.trim();
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inPlace = true]) {
    final ids = <dynamic>{};
    var list = inPlace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
