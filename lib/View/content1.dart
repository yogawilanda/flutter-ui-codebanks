import 'package:codebanks/View/content2.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';

class ImportFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: const Text('Import File'),
      ),
      //this is the parent of body
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    alignment: MainAxisAlignment.spaceAround,
                    buttonPadding: EdgeInsets.symmetric(horizontal: 24),
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            pickSingleFile();
                          },
                          child: Text('Click here to import')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => OpenCamera()));
                          },
                          child: Text('Go to next feature')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

void displayPickedFile(PlatformFile file) async {
  OpenFile.open(file.path);
}

void pickSingleFile() async {
  final result = await FilePicker.platform
      .pickFiles(allowMultiple: false, type: FileType.image);
  //jika tidak ada yang di ambil maka tidak ada file yang akan diunggah ke dalam aplikasi.

  if (result == null) return;

  //to log file, use print. for testing.
  print(result.files.first.name);
  print(result.files.first.size);
  print(result.files.first.path);

  //to display file, use the openfile package
  final file = result.files.first;

  displayPickedFile(file);
}
