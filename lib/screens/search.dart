
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:i_click/widget/user_tile.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  List searchResult = [];
  List foundUsers = [];
  @override
  Widget build(BuildContext context) {
    final CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('users');
    Future<void> searchUser(String searchTerm) async {
      searchResult = [];
      QuerySnapshot querySnapshot =
          await usersCollection.where('name', isEqualTo: searchTerm).get();

      querySnapshot.docs.forEach((doc) {
        searchResult.add(doc.data());
      });
      setState() {
        foundUsers = searchResult;
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Search Screen')),
      body: Column(
        children: [
          TextField(
            controller: searchController,
            onEditingComplete: () async {
              await searchUser(searchController.text);
            },
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: foundUsers.length,
              itemBuilder: (context, index) => UserTile(
                  name: foundUsers[index]['name'],
                  mail: foundUsers[index]['email']))
        ],
      ),
    );
  }
}
