import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Adventurer {
  //f
  String name;
  String role;
  int goldCost;
  //c
  Adventurer({required this.name, required this.role, required this.goldCost});
}

class PartyModel extends ChangeNotifier {
  //f
  List<Adventurer> _party = [];
  List<Adventurer> get party => List.unmodifiable(_party);
  int get partyCount => _party.length;
  int get totalCost{
    int cost = 0;
    for(int i = 0; i < _party.length; i++){
      cost = cost + _party[i].goldCost;
    }
    return cost;
  }
  //c
  //m
  void addAdventurer(Adventurer a){
      _party.add(a);
      notifyListeners();
  }
  void removeAdventurer(Adventurer a){
      _party.remove(a);
      notifyListeners();
  }
}