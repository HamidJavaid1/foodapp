class unBoarding {
  String tittle;
  String Description;
  String image;
  unBoarding(
      {required this.Description, required this.image, required this.tittle});
}

List<unBoarding> content = [
  unBoarding(
      Description: 'Pick your food from our menu\n         More than 35 times',
      image: "images/screen1.png",
      tittle: 'Select from our \n     Best Menu'),
  unBoarding(
      Description:
          '  You can pay cash on dilivery\n  And card paymeny is availble',
      image: "images/screen2.png",
      tittle: 'Easy and Online Payment'),
  unBoarding(
      Description: 'Deliver your Food at your\n                Doorsteps',
      image: "images/screen3.png",
      tittle: 'Quick Delivery at Your\n             Doorsteps')
];
