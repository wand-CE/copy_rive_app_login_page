import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart' as rv;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late rv.RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = rv.OneShotAnimation('Animation2', autoplay: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Side with Animation
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.6,
            child: rv.RiveAnimation.asset(
              'assets/animations/marty.riv',
              controllers: [_controller],
              fit: BoxFit.fill,
            ),
          ),

          // Right Side with Login Form
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(100, 25, 200, 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 200),
                    SvgPicture.asset(
                      'assets/rive_logo_black.svg',
                      semanticsLabel: 'Rive Logo',
                      height: 50,
                    ),
                    SizedBox(height: 70),

                    Text(
                      'Express login via Google and Facebook',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(height: 20),

                    // Social Login Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.g_mobiledata),
                            iconAlignment: IconAlignment.end,
                            label: Expanded(child: Text('Google')),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.grey[700],
                              backgroundColor: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            iconAlignment: IconAlignment.end,
                            icon: Icon(Icons.facebook),
                            label: Expanded(child: Text('Facebook')),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.grey[700],
                              backgroundColor: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                          child: Text('Log in'),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Sign up'),
                        ),
                      ],
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'email or username',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.zero,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        child: Text('Log in'),
                      ),
                    ),

                    SizedBox(height: 20),
                    Center(
                        child: Text(
                      'Log in with SSO',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      'Forgot password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
