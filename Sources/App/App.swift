import Droid

@main
public final class App: DroidApp {
	@AppBuilder public override var body: Content {
        Lifecycle.didFinishLaunching{
			App.setLogLevel(.debug)
			// App.setInnerLogLevel(.trace)
			Log.i("🚀 Lifecycle.didFinishLaunching")
		}
		Manifest
			.application {
				.allowBackup()
				.label("TrendPulse")
				.activities(
					MainActivity.self
				)
			}
    }
}
extension App: @unchecked Sendable {}