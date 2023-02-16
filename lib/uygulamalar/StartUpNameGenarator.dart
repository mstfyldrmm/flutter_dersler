import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class StartUpNameGenerator extends StatefulWidget {
  const StartUpNameGenerator({Key? key}) : super(key: key);

  @override
  State<StartUpNameGenerator> createState() => _StartUpNameGeneratorState();
}

class _StartUpNameGeneratorState extends State<StartUpNameGenerator> {
  List<String> favoriteList = [];
  List<String> nounsList = [];
  List<bool> isAdd = [];

  generateNouns() {
    nouns.take(30).forEach((element) {
      nounsList.add(element.toString());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateNouns();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Random Words'),
        ),
        body: ListView.builder(
            itemCount: nounsList.length,
            itemBuilder: ((context, index) {
              return ListTile(
                leading: Text(nounsList[index],
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
                trailing: IconButton(
                    onPressed: () {
                      favoriteList.add(nounsList[index]);
                      setState(() {
                        isAdd[index] = !isAdd[index];
                      });
                    },
                    icon: isAdd[index]
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border)),
                iconColor: isAdd[index] ? Colors.red : null,
                contentPadding: EdgeInsets.all(20),
              );
            })));
  }
}

/*
onTap: (){
                  setState(() {
                    if(alreadySaved) {
                      favoriteList.remove(nounsList[index]);
                    }
                    else {
                      favoriteList.add(nounsList[index]);
                    }
                  });
                },
*/