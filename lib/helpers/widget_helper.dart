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
