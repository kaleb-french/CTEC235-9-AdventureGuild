import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'adventurer.dart';

class GuilHallRoster extends StatelessWidget{
  GuilHallRoster({super.key});
  final List<Adventurer> partyRoster = [
    Adventurer(name: 'Aria Ironheart', role: 'Knight', goldCost: 150),
    Adventurer(name: 'Eldrin Starweaver', role: 'Mage', goldCost: 200),
    Adventurer(name: 'Lyra Swiftfoot', role: 'Rogue', goldCost: 120),
    Adventurer(name: 'Brakka Oakshield', role: 'Paladin', goldCost: 180),
    Adventurer(name: 'Zephyr Whisperwind', role: 'Ranger', goldCost: 140),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<PartyModel>(
        builder: (context, partyModel, child) {


          return SizedBox.expand(
              child: ListView.builder(
            itemCount: partyRoster.length,
            itemBuilder: (context, index) {
              final hero = partyRoster[index];

              return ListTile(
                title: Text(hero.name),
                subtitle: Column( children: [Text(hero.role),
                                          Text('${hero.goldCost} gold.'),
                ],
                ),
                trailing: ElevatedButton(
                            onPressed: () {
                            context.read<PartyModel>().addAdventurer(hero);
                            },
                    child: const Text('Recruit'),
                ),
              );
            },
          )
          );
        }
    );
  }
}