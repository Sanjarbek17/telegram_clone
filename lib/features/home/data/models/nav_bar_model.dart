class NavBarModel {
  final int id;
  final String title;
  final int unReadMessages;

  NavBarModel({required this.id, required this.title, required this.unReadMessages});

  static List<NavBarModel> navBars = [
    NavBarModel(id: 0, title: 'All Chats', unReadMessages: 0),
    NavBarModel(id: 1, title: 'Work', unReadMessages: 2),
    NavBarModel(id: 2, title: 'Bots', unReadMessages: 3),
  ];
}
