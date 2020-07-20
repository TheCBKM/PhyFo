import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  final List<List<String>> faqs = [
    [
      "When do I need physiotherapy? ",
      '''You need physiotherapy for the prevention of Injury,
work on posture in case of desk jobs, pain in the neck, legs, arms, back, headache is one of the most common reasons for poor posture, for which you should seek physiotherapist’s advice.
To alleviate pain, for stretching and flexibility, to heal from a complicated surgery, to manage a physical limitation, recover from the hip, knee replacement, for post-pregnancy exercises, to correct muscle soreness after gym or gym injuries, recover constant fatigue, to treat children with cerebral palsy and other deformities.
There is much more a physio can offer so, getting physio for overall wellness is a good idea.
'''
    ],
    [
      "Who is a physiotherapist ?",
      '''The physiotherapist is a health practitioner who has in-depth knowledge of the entire musculoskeletal system. That’s up to 840 muscles, between 206 & 270 bones, 220 nerves, and much more. 
Physiotherapists can provide a long term efficient solution to your problems and can even prevent you from upcoming problems. PhyFo provides you an elite group of physiotherapists, in the comfort of your home.
'''
    ],
    [
      "Will I be treated in my first consultation session?",
      '''Yes, you will be treated in your first consultation. For further queries, you can always contact the team. '''
    ],
    [
      "How long does a treatment take?",
      '''It takes approximately 30-40 mins. for a treatment session, but it can vary according to your problem and the physiotherapist’s treatment protocol.'''
    ],
    [
      "Will I need a Physician’s referral?",
      '''No, you don’t need a physician’s referral for physiotherapy, but if you have one, you can share its copy with us along with X-Ray, MRI, or other reports.'''
    ],
    [
      "Do you know how many visits will I need?",
      '''Your physio will be able to offer an estimate of the number of visits you will need after their assessment. Although it can vary during the course of treatment as our physio records your daily progress. '''
    ],
    [
      "Will I be given exercises to do?",
      '''Yes, our physio will design an individual treatment program for each patient, usually consisting of various appropriate exercises that are to be performed between visits to ensure your recovery is optimized. We help you understand each exercise highlighting its importance. 
With PhyFo, you get access to your individualized specific exercise videos on your profile.  
'''
    ],
    [
      "What about payment? ",
      ''' You must pay after each appointment unless you have made other arrangements with our Patient Services team beforehand either online or in cash to our physiotherapist. For further enquiry, you can always contact our team.'''
    ]
  ];

  @override
  Widget build(BuildContext context) {
    print(faqs.length);
    return ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, i) {
          return Center(
            child: Card(
              margin: EdgeInsets.all(30),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            faqs[i][0],
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(faqs[i][1]),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
