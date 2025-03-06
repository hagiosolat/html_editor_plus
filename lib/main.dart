import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html_editor_plus_package/html_editor_plus_package.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: InitialScreen())),
  );
}

class InitialScreen extends ConsumerWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
              child: ListView.builder(
                  itemCount: htmlContent.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MyApp(
                            htmlContent: htmlContent[index],
                          );
                        }));
                      },
                      child: Container(
                        height: 70,
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: Colors.blueGrey.shade200)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Article $index',
                              style: TextStyle(
                                fontFamily: 'Time New Roman',
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            //  Icon(color: Colors.grey, Icons.arrow_forward),
                          ],
                        ),
                      ),
                    );
                  })

              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //
              //   ],
              // ),
              )),
    );
  }
}

List<String> htmlContent = [
  '''
<html>
<body>
  <article>
    <h1>Sample Article Initial</h1>
    <p>This is the initial paragraph with some sample content of the first page.<br>The Next Line</p>
    <h2>List Example</h2>
    <ul>
      <li>List item 1</li>
      <li>List item 2</li>
      <li>List item 3</li>
    </ul>
    <h2>FIRST Table Example </h2>
    <table border="1">
      <tr>
        <td>Header 1</td>
        <td>Header 2</td>
        <td>Header 1</td>
        <td>Header 2</td>
      </tr>
      <tr>
        <td>Data 1</td>
        <td>Data 2</td>
        <td>Data 1</td>
        <td>Data 2</td>
      </tr>
    </table>
    <h2>Image Example</h2>
    <p><img src="https://hips.hearstapps.com/hmg-prod/images/bright-forget-me-nots-royalty-free-image-1677788394.jpg" alt="Flowers image"></p>
    <h2>IFrame Example</h2>
    <iframe width="520" height="300" src="https://www.youtube.com/embed/dQw4w9WgXcQ"></iframe>
    
    <h2>Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video>
  <h2>Another Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video> 
<h2>Another Random Image</h2>
<p><img
 src="https://www.shutterstock.com/shutterstock/photos/2056485080/display_1500/stock-vector-address-and-navigation-bar-icon-business-concept-search-www-http-pictogram-d-concept-2056485080.jpg" alt="Flower Image"></p>
  </article>
</body>
</html>
''',
  '''
<html>
<body>
  <article>
    <h1>Sample Article second page</h1>
    <p>This is the second paragraph with some sample content.<br>The Next Line</p>
    <h2>List Example</h2>
    <ul>
      <li>List item 1</li>
      <li>List item 2</li>
      <li>List item 3</li>
    </ul>
    <h2>Table Example</h2>
    <table border="1">
      <tr>
        <td>Header 1</td>
        <td>Header 2</td>
        <td>Header 1</td>
        <td>Header 2</td>
      </tr>
      <tr>
        <td>Data 1</td>
        <td>Data 2</td>
        <td>Data 1</td>
        <td>Data 2</td>
      </tr>
    </table>
    <h2>Image Example</h2>
    <p><img src="https://hips.hearstapps.com/hmg-prod/images/bright-forget-me-nots-royalty-free-image-1677788394.jpg" alt="Flowers image"></p>
    <h2>IFrame Example</h2>
    <iframe width="520" height="300" src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
    
    <h2>Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video>
  <h2>Another Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video> 
<h2>Another Random Image</h2>
<p><img
 src="https://www.shutterstock.com/shutterstock/photos/2056485080/display_1500/stock-vector-address-and-navigation-bar-icon-business-concept-search-www-http-pictogram-d-concept-2056485080.jpg" alt="Flower Image"></p>
  </article>
</body>
</html>
''',
  '''
<html>
<body>
  <article>
    <h1>Sample Article</h1>
    <p>This is a paragraph with some sample content.<br>The Next Line</p>
    <h2>List Example</h2>
    <ul>
      <li>List item 1</li>
      <li>List item 2</li>
      <li>List item 3</li>
    </ul>
    <h2>Table Example</h2>
    <table border="1">
      <tr>
        <td>Header 1</td>
        <td>Header 2</td>
        <td>Header 1</td>
        <td>Header 2</td>
      </tr>
      <tr>
        <td>Data 1</td>
        <td>Data 2</td>
        <td>Data 1</td>
        <td>Data 2</td>
      </tr>
    </table>
    <h2>Image Example</h2>
    <p><img src="https://hips.hearstapps.com/hmg-prod/images/bright-forget-me-nots-royalty-free-image-1677788394.jpg" alt="Flowers image"></p>
    <h2>IFrame Example</h2>
    <iframe width="520" height="300" src="https://www.youtube.com/embed/dQw4w9WgXcQ"></iframe>
    
    <h2>Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video>
  <h2>Another Video Example</h2>
   <video width="320" height="240" controls>
  <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4" type="video/mp4">
  Your browser does not support the video tag.
  <figcaption> Hello World</figcaption>
  </video> 
<h2>Another Random Image</h2>
<p><img
 src="https://www.shutterstock.com/shutterstock/photos/2056485080/display_1500/stock-vector-address-and-navigation-bar-icon-business-concept-search-www-http-pictogram-d-concept-2056485080.jpg" alt="Flower Image"></p>
  </article>
</body>
</html>
''',
];
