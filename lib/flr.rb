require 'thor'
require 'flr/version'
require 'flr/command'

module Flr

  class CLI < Thor

    desc "version", "Show flr version"
    long_desc <<-LONGDESC
      show the version of flr

    LONGDESC
    def version
      Command.version
    end

    desc "init", "Generate `Flrfile.yaml` and auto specify package `r_dart_library` in `pubspec.yaml`"
    long_desc <<-LONGDESC
      create a `Flrfile.yaml` file for the current directory if none currently exists,
      and auto specify package `r_dart_library`(https://github.com/YK-Unit/r_dart_library) in `pubspec.yaml`.

    LONGDESC
    def init
      Command.init
    end

    desc "generate", "Once scan assets, and then auto specify assets in `pubspec.yaml` and generate `R.dart`"
    long_desc <<-LONGDESC
      once scan the assets based on the configs in `Flrfile.yaml`,
      and then auto specify assets in `pubspec.yaml`,
      and then generate `R.dart` file,
      and generate asset ID codes in `R.dart`.

    LONGDESC
    def generate
      Command.generate
    end

    desc "monitor", "Run a monitor service to keep monitoring the asset changes, and then auto specify assets and generate `R.dart`, until you manually press Ctrl-C"
    long_desc <<-LONGDESC
      run a monitor service to keep monitoring the asset changes,
      and then auto specify assets in `pubspec.yaml`,
      and generate `R.dart` file,
      until you manually press Ctrl-C to stop it.

    LONGDESC
    def monitor
      Command.start_assert_monitor
    end

  end
end
