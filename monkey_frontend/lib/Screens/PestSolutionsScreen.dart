import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class PestSolutionsScreen extends StatelessWidget {
  const PestSolutionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 206, 27, 1),
        title: const Text(
          'Pest Solutions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          PestSolutionCard(
            pestName: "Coconut Caterpillar",
            description:
                "Coconut caterpillar, prevalent in many coconut growing areas in Sri Lanka, is a pest that can cause severe damage to coconut plantations. The coconut caterpillar damages the coconut tree by eating the tissues beneath the coconut leaf, the fertile parts of the leaf.",
            imagePath: 'assets/pngwing.com (45).png',
            solutions: [
              "If a slight damage (eg. In less than 5 branches) is detected, those affected branches should be cut off along with 5 – 6 branches in the lower section of the tree and be burnt.\n\nCutting and burning of branches should be carried out with proper understanding and knowledge, as the caterpillars in the adult stage could fly to the trees in close vicinity. This can lead to an increase in the number of damaged trees as spawning can occur on healthy coconut trees. Hence cutting and burning of branches should be carried out in all stages of the caterpillar, except when it is in the adult stage as a moth.",
              "Coconut caterpillars in the adult stage can get attracted and destroyed by lighting a fire.",
              "As a biological controlling method, the parasitic insects (predators) of the coconut caterpillar in the adult stage could be used.\n\n• Parasitic insects fall into 2 main categories,\n\n  A. Larval parasites – bracon hebetor\n\n  B. Pupal parasites – brachymeria nepenthes\n\n• The predators should be released to the coconut trees.\n\n• The caterpillars shall get destroyed as the predators grow in their bodies, resulting in low number of caterpillar populations.\n\n• However, the cold weather at night, between the months of October and February, affects the breeding of predators resulting in a low growth of them. Hence, this should be taken into consideration as it will reduce the number of predators.\n\n• The deciduous parts of the lower floor branches damaged by the coconut caterpillar can be seen leaving only decayed lines. In such a case, action should be taken to release the parasites to those lands according to the observations and conclusions of the relevant Coconut Development Officer or a person who is well versed in it. Parasitic insects should be obtained from breeding centers.\n\n• Once the parasites are released to the field, no fires should be lit.\n\n• If identified at early stages, the control is relatively easy. Non-identification in early stages and not taking corrective measures on time, shall result in developing the situation into an acute pandemic spreading over a large area.\n\nWhen the damage is acute and developed, using parasites to control shall be futile and using of chemicals shall be necessary.",
              "Chemical methods\n\n• If the coconut plants are damaged in the early stages, it is recommended to dilute 4 ml of Marshall 20 in one liter of water and spray well the underside of the leaves.\n\n• It is recommended to inject 60% monocrotophos into the trunk; however, usage of this pesticide is restricted due to various reasons. Obtaining advice from the Coconut Development Officer under such circumstances is recommended."
            ],
          ),
          const SizedBox(height: 16.0),
          PestSolutionCard(
            pestName: "Coconut Whitefly",
            description:
                "The rural people living in different parts of Sri Lanka misunderstand this insect damage caused by the powdery mildew and white bug. etc. You should know that the “coconut whitefly” causes this damage. About 1 mm in length, this pest lives in herds sucking the sap of various plants. In addition to coconut, the insect attacks plants such as bitter gourd, watermelon and snake gourd etc, belong to Cucurbitaceae and peanut, cowpea and beans etc, belong to Leguminosae also being affected. In addition, it acts as a carrier of viruses or fungi and causes huge damage. At higher temperatures, their activity is somewhat stronger.",
            imagePath: 'assets/pngwing.com (53).png',
            solutions: [
              "Physical methods\n\n1. Manual removal.\n\n2. Apply pressurized water to wash away the underside of the leaves well.\n\n3. Farmers can Wrap greased, yellow polythene covers around the trunk of the coconut tree to attract and repel larvae.\n\n4. Fumigation in cultivated areas. Use leaves like Neem (Margosa) and Holy Basil/ Sacred Basil (Madhuruthala) here.",
              "Chemical methods\n\n01st method\n\nThiamethoxam\n\nCarbosulfan\n\nDissolve 3g of Thiamethoxam or 20ml of carbosulfan in 10 liters of water and prepare the mixture. Then spray thoroughly the underside of the leaves of the plant making them wet.",
              "Chemical methods\n\n02nd method\n\nChlorantraniliprole and Thiamethoxam\n\nDissolve 2.5 g of an insecticide containing chlorantraniliprole and thiamethoxam in 10 liters of water to prepare the mixture. Then spray thoroughly the underside of the leaves of the plant making them wet.",
              "Chemical methods\n\n03rd method\n\nNeem oil & soap mixture\n\nMaterial required\n\nWater – 1 l\n\nSoap powder – 5 g\n\nNeem oil – 10 ml"
            ],
          ),
        ],
      ),
    );
  }
}

class PestSolutionCard extends StatelessWidget {
  final String pestName;
  final String description;
  final String imagePath;
  final List<String> solutions;

  const PestSolutionCard({
    Key? key,
    required this.pestName,
    required this.description,
    required this.imagePath,
    required this.solutions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Card(
          color: const Color.fromARGB(255, 60, 255, 67),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ScrollOnExpand(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
                hasIcon: true,
              ),
              header: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  pestName,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 33, 0),
                  ),
                ),
              ),
              collapsed: Column(
                children: [
                  Image.asset(
                    imagePath,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
              expanded: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imagePath,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(color: Colors.black54),
                    Text(
                      "Description",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(color: Colors.black54),
                    Text(
                      "Solutions",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    ...solutions.map((solution) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            solution,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
