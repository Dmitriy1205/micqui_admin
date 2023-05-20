String? separateNickName(String? nick) {
  if (nick == null) {
    return null;
  }
  final indexOfSpace = nick.indexOf('@');
  if (indexOfSpace >= 0) {
    return nick.substring(0, indexOfSpace);
  } else {
    return nick;
  }
}