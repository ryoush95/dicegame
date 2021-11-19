import 'dart:math';

void main (){
  List<int>lottoFinal = lottonumber();
  // List<int>myfinal = mynum();

  // checkNumber(lottoFinal, myfinal);
}

List<int> lottonumber(){
  var random = Random();
  List<int> lottoList = [];
  var num;

  for(int i = 0; i<6; i++){
    num = random.nextInt(45) + 1;
    lottoList.add(num);
  }

  print('number');
  print(lottoList);

  return lottoList;
}

void checkNumber(lottol, lottoList){
  for(int lotto in lottol){
    for(int mynum in lottoList){
      print('$lotto');
      print('$mynum');
    }
  }
}