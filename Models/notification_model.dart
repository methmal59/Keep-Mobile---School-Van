class NotificationModel {
  late final String childName;
  late final String message;
  late final DateTime dateTime = DateTime.now();

  NotificationModel(this.childName, this.message);
}