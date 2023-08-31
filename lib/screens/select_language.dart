import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LanguageSelectionScreen()));
}

class LanguageModel {
  String name;
  bool isSelected;

  LanguageModel(this.name, {this.isSelected = false});
}

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  List<List<LanguageModel>> _languages = [
    [LanguageModel('English'), LanguageModel('Hindi')],
    [LanguageModel('Kannada'), LanguageModel('Tamil')],
    [LanguageModel('Telugu'), LanguageModel('Malayalam')],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Choose Your Languages', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var language in _languages[0])
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              language.isSelected = !language.isSelected;
                            });
                          },
                          child: Container(
                            width: 160,
                            height: 100,
                            decoration: BoxDecoration(
                              color: language.isSelected
                                  ? Colors.green.withOpacity(0.2)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 2),
                                  blurRadius: 4.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                language.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var language in _languages[1])
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              language.isSelected = !language.isSelected;
                            });
                          },
                          child: Container(
                            width: 160,
                            height: 100,
                            decoration: BoxDecoration(
                              color: language.isSelected
                                  ? Colors.green.withOpacity(0.2)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 2),
                                  blurRadius: 4.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                language.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var language in _languages[2])
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              language.isSelected = !language.isSelected;
                            });
                          },
                          child: Container(
                            width: 160,
                            height: 100,
                            decoration: BoxDecoration(
                              color: language.isSelected
                                  ? Colors.green.withOpacity(0.2)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 2),
                                  blurRadius: 4.0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                language.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  List<String> selectedLanguages = [];
                  for (var row in _languages) {
                    for (var language in row) {
                      if (language.isSelected) {
                        selectedLanguages.add(language.name);
                      }
                    }
                  }
                  print('Selected Languages: $selectedLanguages');
                },
                child: Text('Next', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(156, 192, 188, 0.882),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
