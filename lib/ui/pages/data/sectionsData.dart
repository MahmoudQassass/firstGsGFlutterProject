class SectionData {
  String title;
  String image;
  String dataTy;

  SectionData({this.title, this.image, this.dataTy});
}

List<SectionData> sections = [
  SectionData(
      title: 'المشاتل',
      image: 'assets/images/sections.jpg',
      dataTy: 'mashatel'),
  SectionData(title: 'تنسيق الحدائق', image: 'assets/images/sections.jpg'),
  SectionData(title: 'النباتات البرية', image: 'assets/images/sections.jpg'),
  SectionData(title: 'النباتات المعمرة', image: 'assets/images/sections.jpg'),
  SectionData(title: 'معدات زراعية', image: 'assets/images/sections.jpg'),
];
