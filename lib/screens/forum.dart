import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';


class Chat extends StatefulWidget {
 // static const String id = "CHAT";
 // final User user;

  const Chat({Key? key}) : super(key: key);
  @override
  _ChatState createState() => _ChatState();
}


class _ChatState extends State<Chat> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
   final User? user = FirebaseAuth.instance.currentUser;
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  Future<void> callback() async {
    if (messageController.text.isNotEmpty) {
      await _firestore.collection('messages').add({
        'text': messageController.text,
        'from': '${user?.email}',
        'date': DateTime.now().toIso8601String().toString(),
      });
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shade4,
      appBar: AppBar(
        leading: const Hero(
          tag: 'logo',
          child: SizedBox(
            height: 40.0,
            child: Icon(Icons.chat)
          ),
        ),
        title: const Text("GCEK's  Forum"),
        backgroundColor: shade3,
       /* actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              _auth.signOut();
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          )
        ],*/
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore
                      .collection('messages')
                      .orderBy('date')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
        
                //    List<DocumentSnapshot> docs = snapshot.data?.documents;
                     QuerySnapshot<Object?>? querySnapshot = snapshot.data;
                     List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
                    List<Widget> messages = documents
                        .map((doc) => Message(
                              from: doc['from'],
                              text: doc['text'],
                              me: '${user?.email}' == doc['from'],
                            ))
                        .toList();
        
                    return ListView(
                      controller: scrollController,
                      children: <Widget>[
                        ...messages,
                      ],
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width:250,
                       margin: const EdgeInsets.all(10),
                     // height:20,
                      child: TextField(
                       
                        onSubmitted: (value) => callback(),
                        decoration:  const InputDecoration(
                          hintText: "Enter a Message...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                           hintStyle: TextStyle(
                    color: shade3,
                    fontStyle: FontStyle.italic,
                    fontSize: 17
                  ),
                  
                        ),
                        controller: messageController,
                      ),
                    ),
                    const SizedBox(width:1),
                    SendButton(
                      text: "Send",
                      callback: callback,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const SendButton({Key? key, required this.text, required this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin:EdgeInsets.only(top:10),
       padding:const EdgeInsets.only(top:10),
       height:60,
       width:90,
  child:
    ElevatedButton(
      
      onPressed: callback,
      style: ButtonStyle(
        
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(shade3),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    
 
    RoundedRectangleBorder(
        
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(color: Color.fromARGB(255, 113, 82, 191))
    )
  )
),
      
      child: Text(text,style: const TextStyle(fontSize: 18))
    ));
  }
}

class Message extends StatelessWidget {
  final String from;
  final String text;

  final bool me;

  const Message({Key? key, required this.from, required this.text, required this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            me ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:const EdgeInsets.fromLTRB(4, 5, 4, 1),
            margin:const EdgeInsets.fromLTRB(4, 5, 4, 1),
            child: Text(
            'From: $from',style:const TextStyle(fontSize:13)
          ) ,),
         
          Material(
            color: me ?  Colors.green[300]: Colors.orange[300],
            borderRadius: BorderRadius.circular(10.0),
            
            elevation: 10.0,
            child: Container(
              margin:const EdgeInsets.symmetric(vertical: 5.0, horizontal: 6.0),
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              decoration: const BoxDecoration(
   
    
  ),
              child: Text(
                text,
              ),
            ),
          )
        ],
      ),
       );
  }
}