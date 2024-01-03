class GetaModel {
  int? id, verses_count, chapter_number;
  String? name,
      slug,
      name_transliterated,
      name_translated,
      name_meaning,
      chapter_summary,
      chapter_summary_hindi,
      shlok,
      eShlok,
      image;

  GetaModel(
      {this.id,
      this.verses_count,
      this.chapter_number,
      this.name,
      this.slug,
      this.name_transliterated,
      this.name_translated,
      this.name_meaning,
      this.chapter_summary,
      this.chapter_summary_hindi,
      this.eShlok,
      this.shlok,
      this.image});

  factory GetaModel.mapToModel(Map m1) {
    return GetaModel(
      id: m1['id'],
      chapter_number: m1['chapter_number'],
      chapter_summary: m1['chapter_summary'],
      chapter_summary_hindi: m1['chapter_sum_ary_hindi'],
      name: m1['name'],
      name_meaning: m1['name_meaning'],
      name_translated: m1['name_translated'],
      name_transliterated: m1['name_transliterated'],
      slug: m1['slug'],
      verses_count: m1['verses_count'],
      eShlok: m1['Eshlok'],
      shlok: m1['shlok'],
      image: m1['Image'],
    );
  }
}
