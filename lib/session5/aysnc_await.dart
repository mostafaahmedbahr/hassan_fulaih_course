void main()async {
  final value = await Future.delayed(Duration(
    seconds: 5,),
      ()=>5,
  ).then((value)
  {
    print("done");
  }).catchError((error)
  {
    print(error);
  });
  print(value);
}