# Journal
Write your Journal questions and notes here.

Phase 1-
I created an Adventurer class to hold party members created to fill the partyModel list. The notfiyListeners() sends a message to ui elements with listenrs to changes to the data that matters to them in this instance, changes to the party. If we updated the party without the notfiyListeners call then the ui displaying the data would be unable to get the data needed to update.

Phase 2-
The ChangeNotifer is placed at the top of the stack so it can be accessed anywhere inside the wiget tree, including across mulitple screens.

Phase 3-
context.read allows accesing the context of the model without subscribing to changes while watch acesses the context and watches for changes which will rebuild the wigets involved, if this is not the disired outcome read allows for reading the context without acting on changes that are notified.
