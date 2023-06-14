# When enabled, this will automatically attempt install ZSH & Oh My Zsh
# This will occur early in the installation process after the bin scripts
# and Homebrew are installed, prior to the other applications
INSTALL_OH_MY_ZSH=true

# For visual studio code, with all of the AI progression, typically you'll want
# the insider build for advanced features over the stable build. You can adjust
# this setting to "stable" if you prefer the stable build. Sadly that this time
# the insider build isn't a cask, so there is a helper script to install it manually.
VISUAL_STUIO_CODE_BUILD="insider" # "stable" or "insider"

# https://www.python.org/
# Python is powerful... and fast; plays well with others; runs everywhere;
# is friendly & easy to learn; is Open. These are some of the reasons people
# who use Python would rather not use anything else.
#
# When enabled, this will attempt to install the designated version of Python.
INSTALL_PYTHON=true
PYTHON_VERSION="3.11"

# https://www.phoenixframework.org/
# Peace of mind from prototype to production. Build rich, interactive web applications
# quickly, with less code and fewer moving parts. Join our growing community of
# developers using Phoenix to craft APIs, HTML5 apps and more, for fun or at scale.
#
# When enabled, this will attempt to install the designated version of Phoenix.
# If Elixir is missing, it will be installed first from brew
INSTALL_PHOENIX=true
PHOENIX_VERSION="1.5.9"

# The following are the Homebrew packages and applications that will be installed
# Feel free to add or remove items from these lists as you see fit
BREW_PACKAGES=(
  # ------------------------------
  # Development, essentials
  # ------------------------------
  # https://git-scm.com/
  # Git is a free and open source distributed version control system designed to 
  # handle everything from small to very large projects with speed and efficiency.
  "git"
  # https://cli.github.com/
  # Take GitHub to the command line. GitHub CLI brings GitHub to your terminal.
  # Free and open source.
  "gh"
  # https://ffmpeg.org/
  # A complete, cross-platform solution to record, convert and stream audio and video.
  "ffmpeg"
  # https://github.com/hatoo/oha/
  # Ohayou(おはよう), HTTP load generator, inspired by rakyll/hey with tui animation.
  "oha"
  # ------------------------------
  # Development, databases
  # ------------------------------
  # https://www.sqlite.org
  # SQLite is a C-language library that implements a small, fast, self-contained,
  # high-reliability, full-featured, SQL database engine.
  "sqlite"
  # https://www.postgresql.org/
  # PostgreSQL is a powerful, open source object-relational database system with over
  # 35 years of active development that has earned it a strong reputation for reliability,
  # feature robustness, and performance.
  "postgresql@14"
  # https://www.mongodb.com/docs/mongodb-shell/
  # The MongoDB Shell, mongosh, is a fully functional JavaScript and Node.js 16.x REPL
  # environment for interacting with MongoDB deployments. You can use the MongoDB Shell
  # to test queries and operations directly with your database.
  "mongosh"
  # ------------------------------
  # Development, tools
  # ------------------------------
  # https://www.gnu.org/software/gettext/
  # GNU gettext is an important step for the GNU Translation Project, as it is an asset on
  # which we may build many other steps. This package offers to programmers, translators,
  # and even users, a well integrated set of tools and documentation.
  "gettext" # support for internationalization (i18n)
  # https://elixir-lang.org/
)

# The following are the Homebrew Cask applications that will be installed for OSx
# Feel free to add or remove items from these lists as you see fit
BREW_APPS=(
  # ------------------------------
  # Development
  # ------------------------------
  # https://dbeaver.io/
  # DBeaver Community is a free cross-platform database tool for developers,
  # database administrators, analysts, and everyone working with data. It
  # supports all popular SQL databases like MySQL, MariaDB, PostgreSQL, SQLite,
  # Apache Family, and more.
  "dbeaver-community"
  # https://www.docker.com/
  # Docker takes away repetitive, mundane configuration tasks and is used throughout
  # the development lifecycle for fast, easy and portable application development –
  # desktop and cloud. Docker’s comprehensive end to end platform includes UIs, CLIs,
  # APIs and security that are engineered to work together across the entire application
  # delivery lifecycle.
  "docker"
  # https://studio3t.com/
  # Studio 3T, the professional GUI for MongoDB. All your IDE, client and GUI tools
  # for MongoDB – on Atlas, or anywhere.
  "studio-3t"
  # https://www.warp.dev/
  # The terminal for the 21st century. Warp is a blazingly fast, Rust-based terminal
  # reimagined from the ground up to work like a modern app
  "warp"
  # https://www.jetbrains.com/webstorm/
  # The smartest JavaScript IDE. WebStorm is an integrated development environment for
  # JavaScript and related technologies. Like other JetBrains IDEs, it makes your
  # development experience more enjoyable, automating routine work and helping you
  # handle complex tasks with ease.
  "webstorm"
  # https://www.jetbrains.com/pycharm/
  # The Python IDE for Professional Developers, community edition
  "pycharm-ce"
  # https://www.gimp.org/
  # The Free & Open Source Image Editor. This is the official website of the GNU Image
  # Manipulation Program (GIMP). GIMP is a cross-platform image editor available for
  # GNU/Linux, macOS, Windows and more operating systems. It is free software, you can
  # change its source code and distribute your changes.
  "gimp"
  # ------------------------------
  # Passwords & Security
  # ------------------------------
  # https://authy.com/
  # Enable 2FA for your favorite sites. Go beyond the password and protect yourself from
  # hackers and account takeovers.
  "authy"
  # https://bitwarden.com/
  # Move fast and securely with the password manager trusted by millions. Drive collaboration,
  # boost productivity, and experience the power of open source with Bitwarden, the easiest
  # way to secure all your passwords and sensitive information.
  "bitwarden"
  # https://www.privateinternetaccess.com/
  # A VPN You Can Trust. We all need privacy, especially online. Your IP address and your
  # browsing should be hidden from unnecessary surveillance. Rest assured that PIA’s virtual
  # private network never keeps any usage logs — ever.
  "private-internet-access"
  # ------------------------------
  # Web browsers
  # ------------------------------
  # https://arc.net/
  # We’re imagining a browser that can think as quickly as we do, take work off of our plates,
  # and pull our creativity forward. A browser equipped for the way we use the internet in
  # 2023, and foundational for how we hope to use it in the future.
  "arc"
  # https://brave.com/
  # Brave is on a mission to fix the web by giving users a safer, faster and better browsing
  "brave-browser"
  # https://www.google.com/chrome/
  # "The faster browser" Chrome is faster than fast – it’s engineered for speed and has the
  # tools to help you get things done quickly. And with automatic updates, you always have
  # the newest version of Chrome with the latest performance improvements.
  "google-chrome"
  # https://responsively.app/
  # Develop responsive web apps 5x faster! A must-have DevTool for all Front-End developers
  # that will make your job easier and it is open-source too! 🎉
  "responsively"
  # ------------------------------
  # Productivity
  # ------------------------------
  # https://get.adobe.com/reader/
  # Adobe Acrobat Reader DC software is the free global standard for reliably viewing PDFs.
  "adobe-acrobat-reader"
  # https://freemacsoft.net/appcleaner/
  # AppCleaner is a small application which allows you to thoroughly uninstall unwanted apps.
  "appcleaner"
  # https://www.getmailspring.com/
  # Say hello to Mailspring. Boost your productivity and send better email with Mailspring,
  # the best mail client for Mac, Linux, and Windows.
  "mailspring"
  # https://rectangleapp.com/
  # Move and resize windows in macOS using keyboard shortcuts or snap areas
  "rectangle"
  # https://zoom.us/
  # More connected, more collaborative, more intelligent. Zoom's AI-powered platform helps you do more.
  "zoom"
  # ------------------------------
  # Gaming
  # ------------------------------
  # https://discord.com/
  # IMAGINE A PLACE where you can belong to a school club, a gaming group, or a worldwide
  # art community. Where just you and a handful of friends can spend time together. A place
  # that makes it easy to talk every day and hang out more often.
  "discord"
  # https://store.steampowered.com/
  # Steam is the ultimate destination for playing, discussing, and creating games.
  "steam"
  # https://www.epicgames.com/store/en-US/
  # Download and play PC Games of every genre. We have mods, DLC and Free Games too!
  # Games for everyone.
  "epic-games"
)
