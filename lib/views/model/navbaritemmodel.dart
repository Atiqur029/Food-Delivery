class NavbarIteamModel {
  final int id;
  final String icon;
  NavbarIteamModel({
    required this.id,
    required this.icon,
  });
}

List<NavbarIteamModel> itemmodels = [
  NavbarIteamModel(id: 0, icon: "asset/icon/Home.svg"),
  NavbarIteamModel(id: 1, icon: "asset/icon/Search.svg"),
  NavbarIteamModel(id: 2, icon: "asset/icon/Basket.svg"),
  NavbarIteamModel(id: 3, icon: "asset/icon/Heart.svg"),
  NavbarIteamModel(id: 4, icon: "asset/icon/User.svg"),
];
