import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  // final name = context.vars['name'];

  // Use the `Logger` instance.

  final example = context.logger
      .prompt("This is demo prompt for testing", defaultValue: "Dash");

  context.logger.alert('Hello $example!');
  context.logger.detail(
    'Hello $example!',
    style: (message) => backgroundRed.wrap(styleBold.wrap(white.wrap(message))),
  );

  // Update vars.
  // context.vars['current_year'] = DateTime.now().year;
}
