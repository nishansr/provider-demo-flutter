import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slider/screens/progress_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProgressValue>(
      builder: (context, progress, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Slider',
            style: GoogleFonts.orbitron(fontSize: 25),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Spacer(),
              Text('Progress Value: ',
                  style: GoogleFonts.notoSerif(
                    fontSize: 30,
                  )),
              Text(progress.currentvalue.round().toString(),
                  style: GoogleFonts.notoSerif(
                    fontSize: 30,
                  )),
              Spacer(),
              Slider(
                value: progress.currentvalue,
                max: 100,
                activeColor: Color.fromARGB(255, 73, 73, 73),
                inactiveColor: Color.fromARGB(255, 139, 139, 139),
                thumbColor: Colors.black,
                onChanged: ((value) => progress.updateProgress(value)),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
