class InviteMemberModel {
  final String img;
  final String name;
  final String id;
  final bool? isJoined;

  InviteMemberModel({
    required this.img,
    required this.name,
    required this.id,
    this.isJoined = true,
  });
}

List<InviteMemberModel> inviteMemberList = [
  InviteMemberModel(
    img: 'assets/images/profile-1.png',
    name: 'Natasha MD',
    id: '78952',
  ),
  InviteMemberModel(
    img: 'assets/images/profile-2.png',
    name: 'Hania Hanif',
    id: '78952',
  ),
  InviteMemberModel(
    img: 'assets/images/profile-3.png',
    name: 'Riley Harris',
    id: '78952',
  ),
  InviteMemberModel(
    img: 'assets/images/profile-4.png',
    name: 'Zoey Williams ',
    id: '78952',
  ),
  InviteMemberModel(
    img: 'assets/images/profile-5.png',
    name: 'Crazy Boy',
    id: '78952',
    isJoined: false,
  ),
  InviteMemberModel(
    img: 'assets/images/profile-5.png',
    name: 'Crazy Boy',
    id: '78952',
  ),
];
