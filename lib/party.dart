import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'adventurer.dart';

class QuestPartySummary extends StatelessWidget{
  const QuestPartySummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PartyModel>(
      builder: (context, partyModel , child) {
          final partyRoster = partyModel.party;

          return Container(
            color: Colors.cyanAccent,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Party Size: ${partyModel.partyCount} | Total Cost: ${partyModel.totalCost}'),
                Expanded(child: ListView.builder(
                  itemCount: partyRoster.length,
                  itemBuilder: (context, index) {
                    final member = partyRoster[index];
                    
                    return ListTile(
                      title: Text(member.name),
                      subtitle: Row( children: [ Text(member.role),
                                                  Text('${member.goldCost} Golds'), ],
                      ),
                      trailing: ElevatedButton(onPressed: () {
                            context.read<PartyModel>().removeAdventurer(member);
                      }, child: const Text("Dismiss")),
                      );
                  }
                )  )
              ],
            ),
          );
      },
    );
  }
}