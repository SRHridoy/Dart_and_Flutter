import 'package:flutter/material.dart';
import 'package:pdf_viewer/model/book_info_model.dart';
import 'package:pdf_viewer/pages/pdf_screen.dart';

class TasinBook extends StatelessWidget {
  TasinBook({super.key});

  List<BookInfoModel> booksInfo = [
    BookInfoModel(
        bookImgage: 'assets/icons/bangla.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'আমার বাংলা বই',
        documentName: 'assets/pdfs/class_3_bangla.pdf'),
    BookInfoModel(
        bookImgage: 'assets/icons/english.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'ENGLISH FOR TODAY',
        documentName: 'assets/pdfs/class_3_english.pdf'),
    BookInfoModel(
        bookImgage: 'assets/icons/math.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'প্রাথমিক গণিত',
        documentName: 'assets/pdfs/class_3_math.pdf'),
    BookInfoModel(
        bookImgage: 'assets/icons/science.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'প্রাথমিক বিজ্ঞান',
        documentName: 'assets/pdfs/class_3_science.pdf'),
    BookInfoModel(
        bookImgage: 'assets/icons/islam.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'ইসলাম শিক্ষা',
        documentName: 'assets/pdfs/class_3_islam.pdf'),
    BookInfoModel(
        bookImgage: 'assets/icons/bdg.ico',
        className: 'তৃতীয় শ্রেনী',
        bookName: 'বাংলাদেশ ও বিশ্বপরিচয়',
        documentName: 'assets/pdfs/class_3_bdg.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'তাসিনের বইসমূহ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Icon(
            Icons.menu_book_rounded,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: booksInfo.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white70,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Image.asset(
                  booksInfo[index].bookImgage,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(booksInfo[index].className),
              subtitle: Text(booksInfo[index].bookName),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PdfScreen(
                            bookName: booksInfo[index].bookName,
                            documentName: booksInfo[index].documentName,
                          ),
                        ));
                  },
                  icon: Icon(
                    Icons.navigate_next_outlined,
                    size: 30,
                  )),
            ),
          );
        },
      ),
    );
  }
}
