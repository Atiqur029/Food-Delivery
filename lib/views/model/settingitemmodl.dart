class SettingItemModel {
  final int id;
  final String icon;
  final String name;

  SettingItemModel(this.id, this.icon, this.name);
}

List<SettingItemModel> settingItem = [
  SettingItemModel(0, "asset/icon/Pencil.svg", "Account and Profile"),
  SettingItemModel(1, "asset/icon/Wallet.svg", "Manage Payment Methode"),
  SettingItemModel(2, "asset/icon/Location.svg", "Manage Location"),
  SettingItemModel(3, "asset/icon/History.svg", "Order History"),
  SettingItemModel(4, "asset/icon/Bug.svg", "Contact Support"),
  SettingItemModel(5, "asset/icon/Gift.svg", "Refer to a friend"),
  SettingItemModel(6, "asset/icon/Star.svg", "Write a Review"),
  SettingItemModel(7, "asset/icon/Paper1.svg", "Terms and Condition"),
  SettingItemModel(8, "asset/icon/Paper2.svg", "Privacy Policy"),
  SettingItemModel(9, "asset/icon/Logout.svg", "Logout"),
];
