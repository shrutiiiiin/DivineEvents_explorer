import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customCards extends StatelessWidget {
  const customCards({Key? key, required this.heading, required this.content}) : super(key: key);
  final String heading;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GestureDetector(
        onTap: (){
          Container(

          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(30),

            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Colors.black26,
              )
            ],
          ),

          child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  heading,
                  style: TextStyle(
                    color: Colors.black, // Set the text color here
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 3),
               Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(content),
              ),
          ],
          ),
        ),
      ),
    );

  }
}


List<customCards> EventList =
    [
      customCards(heading: '1528 – Mosque construction', content: 'Babri Mosque is built by Mughal commander Mir Baqi under the rule of the first Mughal king, Babur.'),
      customCards(heading: '1853 – First recorded instance of conflict', content: 'A Hindu sect claims that a temple was destroyed during Babur’s reign to make way for the mosque.'),
      customCards(heading: '1859 – The British erect a fence', content: 'The British colonial administration partitions the site into two separate sections for Hindus and Muslims. Muslims allowed to pray inside, while Hindus allowed to worship in the outer courtyard.'),
      customCards(heading: 'December 23, 1949 – Mosque becomes a ‘disputed property’', content: 'The government declares the mosque a “disputed property” and locks its gate after idols of Ram deity are allegedly placed by Hindu priests inside the structure, according to police reports. No Muslim prayers offered at the mosque after that.'),
      customCards(heading: '1950-61 – Civil suits filed', content: 'Four civil suits are filed in the court ranging from the rights to perform Hindu rituals at the site to a Muslim group seeking declaration and possession of the site.',),
      customCards(heading: '1984 – Hindu temple committee', content: 'A committee is formed by Hindu far-right groups, including the Vishwa Hindu Parishad (VHP), to spearhead the construction of a Hindu temple.',),
      customCards(heading: '1990 – BJP’s Ram temple campaign', content: 'BJP leader Lal Krishna Advani leads a nationwide campaign to build a temple in the place of the mosque. The nationwide campaign leaves a trail of violence in its wake, resulting in Advani’s arrest in the eastern state of Bihar.'),
      customCards(heading: 'December 6, 1992 – Hindu nationalist mob tears down the mosque', content: ' Tens of thousands of Hindus gather in Ayodhya, pulling down the 16th-century mosque. Hindu-Muslim riots break out across the country.'),
      customCards(heading: 'December 16, 1992 – Liberhan Commission', content: 'Ten days after the demolition of the mosque, the central government forms the Liberhan Commission to investigate the incident.'),
      customCards(heading: '2003 – Archaeological survey', content: 'Archaeologists begin a court-directed survey to determine whether a Hindu temple existed at the site. The survey says there is evidence of a temple beneath the mosque, but many archaeologists and Muslims dispute the findings.'),
      customCards(heading: 'June 2009 Liberhan Commission report', content: 'The commission submits its report 17 years after the demolition of the mosque. The report names several leaders of the BJP and its ideological mentor Rashtriya Swayamsevak Sangh (RSS) as responsible for the demolition of the mosque. Some senior BJP leaders, including Advani, face trial.'),
      customCards(heading: 'September 2010 – Site to be ‘shared’', content: 'Three judges of the Allahabad High Court rule that Hindus and Muslims should share the disputed site. The court says two-thirds of the 2.77-acre (1.12-hectare) site belongs to Hindu groups – Nirmohi Akhara sect and Ramlalla Virajman – and the rest to the Muslim group (Sunni Central Wakf Board, UP).'),
      customCards(heading: 'May 2011 – Ruling suspended', content: 'The Supreme Court suspends the High Court ruling following appeals by Hindu and Muslim groups.'),
      customCards(heading: 'March 21, 2017 – Out-of-court settlement', content: 'The chief justice of India suggests an out-of-court settlement between Hindus and Muslims.'),
      customCards(heading: 'April 19, 2017 – Conspiracy charges', content: 'The Supreme Court revives conspiracy charges against top governing party leaders – Advani, Murli Manohar Joshi – and 13 others in the mosque demolition case.'),
      customCards(heading: 'December 5, 2017 – Supreme Court hearing', content: 'The top court hears 13 appeals in the dispute.'),
      customCards(heading: 'January 25, 2019 – Five-judge bench to hear case', content: 'Chief Justice of India (CJI) Ranjan Gogoi sets up a five-judge bench to hear the case overruling an earlier order by then-CJI Dipak Misra to set up a three-judge bench. The new bench comprises Chief Justice Gogoi and Justices SA Bobde, DY Chandrachud, Ashok Bhushan and SA Nazeer.'),
      customCards(heading: 'March 8, 2019 – Mediation panel set up', content: 'The top court sets up a mediation panel headed by former Supreme Court judge FM Ibrahim Kalifulla to reach an out-of-court settlement.'),

    ];




