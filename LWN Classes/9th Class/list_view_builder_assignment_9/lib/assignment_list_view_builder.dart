import 'package:flutter/material.dart';

import 'models/song_model.dart';

class Assignment9ListViewBuilder extends StatefulWidget {
  const Assignment9ListViewBuilder({super.key});

  @override
  State<Assignment9ListViewBuilder> createState() =>
      _Assignment9ListViewBuilderState();
}

class _Assignment9ListViewBuilderState
    extends State<Assignment9ListViewBuilder> {
  List<SongModel> songs = [
    SongModel(
      id: '1',
      favouriteSongName: 'Tum Hi Ho',
      singerName: 'Arijit Singh',
      rating: '4.9',
    ),
    SongModel(
      id: '2',
      favouriteSongName: 'Channa Mereya',
      singerName: 'Arijit Singh',
      rating: '4.8',
    ),
    SongModel(
      id: '3',
      favouriteSongName: 'Tera Ban Jaunga',
      singerName: 'Akhil Sachdeva, Tulsi Kumar',
      rating: '4.7',
    ),
    SongModel(
      id: '4',
      favouriteSongName: 'Kesariya',
      singerName: 'Arijit Singh',
      rating: '4.8',
    ),
    SongModel(
      id: '5',
      favouriteSongName: 'Tum Se Hi',
      singerName: 'Mohit Chauhan',
      rating: '4.6',
    ),
    SongModel(
      id: '6',
      favouriteSongName: 'Zara Zara',
      singerName: 'Bombay Jayashree',
      rating: '4.7',
    ),
    SongModel(
      id: '7',
      favouriteSongName: 'Kal Ho Naa Ho',
      singerName: 'Sonu Nigam',
      rating: '4.9',
    ),
    SongModel(
      id: '8',
      favouriteSongName: 'Maa Tujhe Salaam',
      singerName: 'A.R. Rahman',
      rating: '5.0',
    ),
    SongModel(
      id: '9',
      favouriteSongName: 'Agar Tum Saath Ho',
      singerName: 'Arijit Singh, Alka Yagnik',
      rating: '4.8',
    ),
    SongModel(
      id: '10',
      favouriteSongName: 'Jai Ho',
      singerName: 'A.R. Rahman',
      rating: '4.9',
    ),
    SongModel(
      id: '11',
      favouriteSongName: 'Shei tumi',
      singerName: 'Aiyub Bacchu',
      rating: '5.0',
    ),
    SongModel(
      id: '12',
      favouriteSongName: 'Ek Paye Nupur',
      singerName: 'Runa Laila',
      rating: '4.8',
    ),
    SongModel(
      id: '13',
      favouriteSongName: 'Tumi Bondhu Kala Pakhi',
      singerName: 'Momtaz Begum',
      rating: '4.7',
    ),
    SongModel(
      id: '14',
      favouriteSongName: 'Amar Bhaier Rokte Rangano',
      singerName: 'Abdul Latif',
      rating: '5.0',
    ),
    SongModel(
      id: '15',
      favouriteSongName: 'Champa Chameli',
      singerName: 'Andrew Kishore',
      rating: '4.6',
    ),
    SongModel(
      id: '16',
      favouriteSongName: 'Ore Nil Doriya',
      singerName: 'Bari Siddiqui',
      rating: '4.9',
    ),
    SongModel(
      id: '17',
      favouriteSongName: 'Tomake Chai',
      singerName: 'James',
      rating: '4.8',
    ),
    SongModel(
      id: '18',
      favouriteSongName: 'Shey Je Boshe Achhe',
      singerName: 'Habib Wahid',
      rating: '4.7',
    ),
    SongModel(
      id: '19',
      favouriteSongName: 'Bhalo Achi Bhalo Theko',
      singerName: 'Shahnaz Rahmatullah',
      rating: '4.9',
    ),
    SongModel(
      id: '20',
      favouriteSongName: 'Bondhu Tin Din Tor Barite Gelam',
      singerName: 'Baul Shah Abdul Karim',
      rating: '4.8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assignment 9 ListViewBuilder',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => showSongs(songs[index]),
        itemCount: songs.length,
      ),
    );
  }

  showSongs(SongModel song) {
    return Card(
      color: Colors.grey[200],
      shadowColor: Colors.cyan,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(song.id),
        ),
        title: Text(
          song.favouriteSongName,
          style: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(song.singerName),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(song.rating),
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
