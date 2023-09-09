import 'package:flutter/material.dart';
import 'package:my_slack_profile/my_git_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    onTap() => Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const MyGitPage(gitUrl: "https://github.com/andymaking")));

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/andima.jpg", height: 300, width: 300,)
              ),
              const SizedBox(height: 20,),
              const Text("Udoh Andima Solomon", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20)
                ),
                onPressed: onTap,
                child: Text("Open GitHub",style: TextStyle(fontSize: 16))
              )
            ],
          ),
        ),
      ),
    );
  }
}