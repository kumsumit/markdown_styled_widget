#import "MarkdownStyledWidgetPlugin.h"
#if __has_include(<markdown_styled_widget/markdown_styled_widget-Swift.h>)
#import <markdown_styled_widget/markdown_styled_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "markdown_styled_widget-Swift.h"
#endif

@implementation MarkdownStyledWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMarkdownStyledWidgetPlugin registerWithRegistrar:registrar];
}
@end
