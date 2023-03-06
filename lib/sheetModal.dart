// ignore_for_file: file_names

class SheetModel {
  SheetModel(
      {this.heading1 = '',
      this.heading2 = '',
      this.topFileds = const [],
      this.sections = const []});
  String heading1;
  String heading2;
  List<TopFiled> topFileds;
  List<SectionsModel> sections;
}

class TopFiled {
  TopFiled({this.label = '', this.value = ''});

  String label;
  String value;
}

class SectionsModel {
  SectionsModel(
      {this.sectionTitle = '',
      this.columnsLabels = const [],
      this.rows = const []});
  String sectionTitle;
  List<String> columnsLabels;
  List<RowModel> rows;
}

class RowModel {
  RowModel({this.children = const []});

  List<CellModel> children;
}

class CellModel {
  CellModel({this.isFiled = true, this.content = '', this.noOfFiled = 0});
  bool isFiled;
  String content;
  int noOfFiled;
}
