import 'package:flutter/material.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/buspage': (context) => BusPage(),
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    IconData iLight = Icons.wb_sunny;
    IconData iDark = Icons.nights_stay;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Image.asset(
          'assets/bus.png',
        ),
        title: Text(
          'KIOTRIDE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: Provider.of<ThemeProvider>(context).toggleTheme,
            icon: Icon(iLight),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface),
              ),
              Text(
                'Please Enter Your Detail',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.background),
              ),
              SizedBox(
                height: heighty * 0.1,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  border: Border.all(
                    color: Color(0xff34586E),
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(widthy * 0.8, heighty * 0.06),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context)
                          .colorScheme
                          .surface), // Set the background color
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onSurface),
                ),
                onPressed: _login,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    final bool rememberMe = _rememberMe;

    if (username == 'admin' && password == '123456') {
      Navigator.pushReplacementNamed(context, '/buspage');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }
}
