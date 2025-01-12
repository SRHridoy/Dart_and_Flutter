import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen(
      {super.key, required this.documentName, required this.bookName});

  final String documentName;
  final String bookName;

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  late PdfControllerPinch pdfControllerPinch;
  int totalPages = 0;
  int currPage = 1;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(widget.documentName));
  }

  @override
  void dispose() {
    super.dispose();
    pdfControllerPinch.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        title: Text(
          widget.bookName,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Total Pages: $totalPages'),
            IconButton(
                onPressed: () {
                  pdfControllerPinch.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceIn);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.deepOrange,
                )),
            Text('Current Page : $currPage'),
            IconButton(
                onPressed: () {
                  pdfControllerPinch.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceInOut);
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.deepOrange,
                )),
          ],
        ),
        _pdfView()
      ],
    );
  }

  Widget _pdfView() {
    return Expanded(
        child: PdfViewPinch(
      scrollDirection: Axis.vertical,
      controller: pdfControllerPinch,
      onDocumentLoaded: (document) {
        setState(() {
          totalPages = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        currPage = page;
      },
    ));
  }
}
