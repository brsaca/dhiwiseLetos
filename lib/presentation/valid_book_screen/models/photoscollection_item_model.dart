import '../../../core/app_export.dart';

/// This class is used in the [photoscollection_item_widget] screen.
class PhotoscollectionItemModel {
  PhotoscollectionItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
