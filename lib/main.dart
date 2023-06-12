import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Photo Gallery'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                child: const Center(
                  child: Text(
                    'Welcome to My Photo Gallery!',
                    style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),

                  // Add more ElevatedButton or OutlineButton widgets here
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: const [
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Sample Photo 1'),
                    subtitle: Text('Category 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Sample Photo 2'),
                    subtitle: Text('Category 2'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Sample Photo 3'),
                    subtitle: Text('Category 3'),
                  ),

                ],
              ),
              const SizedBox(height: 16),
              IconButton(
                icon: const Icon(Icons.upload),
                onPressed: () {
                  showSnackbar(context, 'Photos Uploaded Successfully!');
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

}
