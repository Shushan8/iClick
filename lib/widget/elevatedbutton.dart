import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons(
    //TODO: nuynnel stex,parametreri anunnery koshamrniyn )) u ta menak xashangi tesaketic chum asum,yes kodin ancanot mard,yeshumum kodin u pen chum haskanum cer tvac anunneric
      {super.key,
      required this.whdth,
      required this.height,
      required this.textbutton,
      required this.fanction,
      required this.fontSizes,
      required this.borederRadi});
  final double whdth;
  final double height;
  final String textbutton;
  final Function fanction;
  final double fontSizes ;
  final double borederRadi ;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return InkWell(
      //TODO: tvyal depqum animastn avelord pakagcery, u kariq kiriq hse sti 
      // onTap: fanction;
      
      onTap: (){
        fanction();
      },
      child: Container(
        width: whdth,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            colorProvider.colorGradient1,
            colorProvider.colorGradient2
          ]),
          borderRadius: BorderRadius.circular(borederRadi),
        ),
        child: Center(
            child: Text(
          textbutton,
          style:  TextStyle(color: Colors.white, fontSize:fontSizes ),
        )),
      ),
    );
  }
}
