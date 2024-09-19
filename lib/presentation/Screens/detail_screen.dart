import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app2/domain/entities/push_messages.dart';
import 'package:push_app2/presentation/blocs/notifications/notifications_bloc.dart';

class DetailScreen extends StatelessWidget {

  final String pushMessageId;

  const DetailScreen({super.key, required this.pushMessageId});

  @override
  Widget build(BuildContext context) {

    final PushMessage? message = context.watch<NotificationsBloc>()
      .getMessageById(pushMessageId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles Push'),
      ),
      body: (message != null)
      ? _DetailsView(message: message)
      : Center( child: Text('Sin notificaciones'),),
    );
  }
}

class _DetailsView extends StatelessWidget {

  final PushMessage message;

  const _DetailsView({
    super.key, 
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          if( message.imageUrl != null)
            Image.network(message.imageUrl!),
          const SizedBox(height: 30),
          Text(message.title, style: textStyle.titleMedium),
          Text(message.body),
          const Divider(),
          Text(message.data.toString())
        ],
      ),
    );
  }
}