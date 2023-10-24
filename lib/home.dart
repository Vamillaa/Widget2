import 'package:flutter/material.dart';
import 'package:flutter_widget1/booking.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.amber, Colors.blue],
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                      child: ClipRRect(
                        child: Image.asset(
                          'images/Bestwestern.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.cyanAccent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                width: double.infinity,
                                height: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'images/Bestwestern1.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                width: double.infinity,
                                height: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'images/Bestwestern2.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                width: double.infinity,
                                height: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'images/Bestwestern3.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                width: double.infinity,
                                height: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'images/Bestwestern4.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                        child: Column(
                      children: [
                        Text(
                          "Best Western Hotel Surakarta",
                          style: TextStyle(fontSize: 16),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dictum tempor ligula non eleifend. Donec dignissim velit non sapien congue, bibendum pellentesque sem luctus. Ut fermentum, ex non laoreet ultrices, magna urna convallis magna, quis interdum magna elit a elit. Mauris mattis sit amet ante eu porttitor. Aliquam congue, lorem non pretium venenatis, urna dui commodo nibh, a interdum leo mi sit amet mi. Cras vestibulum sit amet urna in ultrices. Duis pharetra tincidunt eros a elementum. Nunc dignissim lacus in nulla mattis, eu efficitur turpis lobortis. Aliquam nisl lorem, rhoncus nec augue non, pretium molestie sapien. Curabitur auctor leo tempus odio egestas, a varius diam ornare. Donec at arcu et tortor malesuada egestas. Nulla ornare ligula eget augue ultrices, tempus semper ipsum maximus. Aliquam erat volutpat. Maecenas semper lectus quis urna malesuada vestibulum. Donec id mauris pulvinar, luctus leo a, finibus lectus. Ut euismod ultrices sem. Sed efficitur interdum tellus eu ullamcorper. Phasellus tempus nibh in nunc varius ultricies. Curabitur dapibus finibus massa, in maximus est scelerisque tempor. In faucibus dui vitae luctus sodales. Phasellus luctus libero ex, vitae facilisis sapien sagittis nec. Sed nulla neque, finibus non magna eu, egestas suscipit urna. Quisque a metus arcu. Ut viverra risus ligula, id tincidunt ante rhoncus dignissim. Suspendisse lacinia odio id tortor rhoncus, eget viverra est malesuada. Quisque nec lorem fringilla, pulvinar augue a, pretium velit. Aliquam auctor metus ac nunc gravida porttitor. Nam et sem in urna aliquam laoreet et vitae purus. Curabitur porta diam nisi, id pretium diam hendrerit in. Ut condimentum varius sapien, sit amet porta risus semper at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget suscipit tellus. Vivamus porttitor quam eu nunc dignissim tristique. Morbi vel erat feugiat, lacinia orci a, faucibus neque. Pellentesque ut commodo augue. Donec dictum velit ante. Vivamus et magna consequat, vestibulum ligula eu, suscipit tortor. Vivamus eget est nec orci laoreet scelerisque. Fusce elementum nunc magna, vitae mattis sem commodo vel. Nulla a blandit risus. Nunc imperdiet turpis ut est vehicula placerat. Aenean a augue aliquam ligula sodales dictum. Proin placerat, libero ac tincidunt euismod, elit arcu scelerisque dolor, id tincidunt est nibh eget sem. In eu nunc accumsan leo cursus iaculis nec euismod lorem. Maecenas id sem ultricies, suscipit ex dictum, congue sem. Donec a turpis non lacus sodales volutpat. Vivamus dignissim posuere arcu ac hendrerit. Suspendisse potenti. Aenean erat sapien, congue in dignissim non, sodales nec leo. Duis nec venenatis justo. Donec eu metus et elit egestas commodo a quis velit. Vivamus ullamcorper consequat justo. Aenean efficitur, dolor in varius pulvinar, metus nisl ultrices velit, vitae vulputate odio elit a neque. Nullam ultrices lacinia egestas. Aliquam erat volutpat.",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.0,
              right: 10.0,
              child: HeartButton(),
            ),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Welcome to booking page',
                      backgroundColor: Colors.green);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookingPage();
                  }));
                },
                icon: Icon(Icons.check_box),
                label: Text("Book Now"),
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ));
  }
}

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleLike,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10.0),
        child: Icon(
          isLiked ? Icons.favorite : Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
