import 'package:chat_ui/data/constants/app_colors.dart';
import 'package:chat_ui/utilities/extensions/widget.extensions.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String? title;
  final List<Widget>? action;
  final Widget? leading;
  final double leadingWidth;
  final bool centerTitle;

  ChatAppBar({
    Key? key,
    this.title,
    this.action,
    this.leading,
    this.leadingWidth = 30.0,
    this.centerTitle = false,
  })  : preferredSize = Size.fromHeight(AppBar().preferredSize.height),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [];
    actions.addAll(action ?? []);

    return AppBar(
      titleSpacing: 0,
      title: Row(
        children: [
          2.horizontalSpacing,
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.black.withOpacity(0.05),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: FlutterLogo(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text('User Name'),
              subtitle: Text(
                'Active',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 3),
            ),
          )
        ],
      ),
      centerTitle: false,
      backgroundColor: AppColors.primaryColor.withOpacity(0.2),
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.call),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
          color: Colors.black,
        ),
      ],
    );

    return AppBar(
      centerTitle: centerTitle,
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )
          : null,
      elevation: 0,
      leading: leading,
      leadingWidth: leadingWidth,
      actions: actions,
      backgroundColor: Colors.transparent,
    );
  }
}
