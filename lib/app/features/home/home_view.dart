import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 28,
            left: 16,
            right: 16
          ),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        Assets.logo,
                        height: 18,
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.34,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 3),
                                blurRadius: 6.0,
                                color: Theme.of(context)
                                    .colorScheme.shadow.withOpacity(0.4)
                              )
                            ],
                          ),
                          child: Image.asset(
                            Assets.profile,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Facilitando seus ',
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        children: [
                          TextSpan(
                            text: 'envios.',
                            style: Theme.of(context).textTheme.headline2
                                ?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ]
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Entregue ou envie.',
                      style: Theme.of(context).textTheme.headline5
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 7,
                child: FractionallySizedBox(
                  heightFactor: 0.74,
                  child: Column(
                    children: const <Widget>[
                      Expanded(
                        child: CardFeatureWidget(
                          title: 'Remetente', 
                          subtitle: 'Pra onde quer enviar o seu objeto?', 
                          image: AssetImage(Assets.box),
                        ),
                      ),
                      SizedBox(height: 22),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: CardFeatureWidget(
                            title: 'Viajante', 
                            subtitle: 'Vai viajar pra onde?', 
                            image: AssetImage(Assets.truck),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -1),
                blurRadius: 5,
                color: Theme.of(context).shadowColor.withOpacity(0.15)
              )
            ]
          ),
          child: BottomNavigationBar(
            selectedFontSize: 10,
            unselectedFontSize: 10,
            backgroundColor: Theme.of(context).colorScheme.background,
            selectedItemColor: Theme.of(context).colorScheme.tertiary,
            unselectedItemColor: Theme.of(context).colorScheme.tertiary,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Início',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notificações',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: 'Chat',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.layers),
                  label: 'Pedidos',),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_shipping),
                  label: 'Entregas',),
            ],
          ),
        ),
      ),
  );
}