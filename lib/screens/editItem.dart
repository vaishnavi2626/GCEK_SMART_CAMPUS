import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../colors.dart';


// ignore: must_be_immutable
class EditItem extends StatelessWidget {
 EditItem(this._item, {Key? key}) : super(key: key){
   
   _reference = FirebaseFirestore.instance
        .collection('item_list')
        .doc(_item['id']);

 
   }
  final Map _item;
  late DocumentReference _reference;
  final User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Edit an Item'), backgroundColor: shade3,),
        body: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          alignment: AlignmentDirectional.topStart,
          child: Row(children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
              ),
              onPressed: () {
               Map<String,String> dataToUpdate={
                        'status':'Found',
                         'foundBy':'${user?.email}',
                      };
                       _reference.update(dataToUpdate);
            }, child: const Text('Found?'))
          ]),
        ));
  }
}