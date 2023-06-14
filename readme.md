```
.----------------.  .----------------.  .----------------.
| .--------------. || .--------------. || .--------------. |
| |     ____     | || |  ________    | || |    ___       | |
| |   .'    `.   | || | |_   ___ `.  | || |  .'   '.     | |
| |  /  .--.  \  | || |   | |   `. \ | || | /  .-.  \    | |
| |  | |    | |  | || |   | |    | | | || | | |   | |    | |
| |  \  `--'  /  | || |  _| |___.' / | || | \  `-'  \_   | |
| |   `.____.'   | || | |________.'  | || |  `.___.\__|  | |
| |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' |
'----------------'  '----------------'  '----------------'
```

Having a new Mac is exciting, but it can also be a pain to get everything set up just the way you like it. Going through
the process enough times, it's a bore to have to manually set things up, and, while I've had gist one off scripts in the
past to do a part of the effort, I wanted something more robust and extensible for the future, and to assist other
developers.

Thus, the birth of **ODQ, the OSx Developer Quickstart**.

> This repository is a collection of scripts and configuration files to help you get up and running quickly. Everything
> is designed to ready your new Mac from **a single command**, controlled by a configuration file of options and
> libs/applications you want installed.

One command, and you're ready to go! No dependencies, no fuss, no muss. 🥳
```shell
$ bash <(curl -s https://raw.githubusercontent.com/sjhomer/odq/main/web-install.sh)
```

## Sensible developer defaults, easily overridable!

All the lib and applications in the default config are opinionated based on the types of development and workflow I
typically work with.

I'm a full stack developer, so I need a **lot of tools** to get my job done. There's a series of different databases,
IDEs, browsers and like, all used to support the many needs of the day to day as well as experimentation I perform on a
regular basis.

Yet, everything this script executes is managed in the [`config.sh`](config.sh) file. You can easily override the
default options and libraries to install by simply editing the file (more on this below).

### Process

The script will perform the following actions:

1. [Copy bin](home/install.sh) scripts to $HOME/bin
- [Install Homebrew](home/bin/brew/install.sh), and add a script to OSx that will automatically update it, and all your packages on system boot (requires sudo)
- [Install zsh & Oh My Zsh](home/zsh-install.zsh) and copy over .zsh folder and config files
2. [Install libraries & applications](apps/install.sh)
- Homebrew installs list of libraries in BREW_PACKAGES
- Homebrew installs list of applications in BREW_APPS
- Installs Node (FNM) and Ruby (RVM) version managers
- Installs VS Code preview build (or stable if adjusted in config)
- Installs Python & default packages (unless disabled in config)
- Installs Elixir + Phoenix framework (unless disabled in config)
3. [Install fonts](fonts/install.sh) desired open source devs fonts, sourced via [Nerd Fonts](https://www.nerdfonts.com/)

## Configuration

All configuration is done in the [`config.sh`](config.sh) file, which you can edit to customize the installation process to your liking. Save your changes and fire up the script to see your changes in action.

| Variable                 | Description                                                                                                              | Insights                                                                                                                                                      |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| INSTALL_OH_MY_ZSH        | When enabled, this variable triggers the automatic installation of ZSH and Oh My Zsh.                                    | Enabling this option ensures that ZSH and Oh My Zsh will be installed early in the installation process, providing an enhanced shell experience.              |
| VISUAL_STUDIO_CODE_BUILD | This variable determines whether to install the stable or insider build of Visual Studio Code.                           | Choosing the "insider" build provides advanced features and the latest updates. If you prefer a more stable version, you can change this setting to "stable". |
| INSTALL_PHOENIX          | When enabled, this variable triggers the installation of the designated version of Phoenix, along with its dependencies. | Enabling this option ensures that Phoenix framework is installed. If Elixir is missing, it will be installed first from Homebrew.                             |
| PHOENIX_VERSION          | Specifies the version of Phoenix to install when INSTALL_PHOENIX is enabled.                                             | You can set this variable to the desired version of Phoenix framework. Ensure that the specified version is compatible with your project.                     |
| BREW_PACKAGES            | An array of Homebrew packages to be installed. (details below)                                                           | You can add or remove items from this list based on your development needs.                                                                                   |
| BREW_APPS                | An array of Homebrew Cask applications to be installed on macOS. (details below)                                         | You can customize this list by adding or removing applications based on your preferences and requirements.                                                    |

### BREW_PACKAGES - Homebrew Libraries & CLIs

#### Development Essentials

| Package                              | Description                                                                                                                                                                                            |
|--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [gh](https://cli.github.com/)        | Take GitHub to the command line. GitHub CLI brings GitHub to your terminal. Free and open source.                                                                                                      |
| [ffmpeg](https://ffmpeg.org/)        | A complete, cross-platform solution to record, convert and stream audio and video.                                                                                                                     |
| [oha](https://github.com/hatoo/oha/) | Ohayou(おはよう), HTTP load generator, inspired by rakyll/hey with tui animation.                                                                                                                          |
| [Python](https://www.python.org/)    | Python is powerful... and fast; plays well with others; runs everywhere; is friendly & easy to learn; is Open. These are some of the reasons people who use Python would rather not use anything else. |

#### Development Databases

| Package                                                | Description                                                                                                                                                                                                                        |
|--------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [SQLite](https://www.sqlite.org)                       | SQLite is a C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine.                                                                                                |
| [PostgreSQL](https://www.postgresql.org/)              | PostgreSQL is a powerful, open source object-relational database system with over 35 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance.                      |
| [mongosh](https://www.mongodb.com/docs/mongodb-shell/) | The MongoDB Shell, mongosh, is a fully functional JavaScript and Node.js 16.x REPL environment for interacting with MongoDB deployments. You can use the MongoDB Shell to test queries and operations directly with your database. |

#### Development Tools

| Package                                          | Description                                                                                                                                                                                                                                         |
|--------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [gettext](https://www.gnu.org/software/gettext/) | GNU gettext is an important step for the GNU Translation Project, as it is an asset on which we may build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools and documentation.      |
| [Elixir](https://elixir-lang.org/)               | Elixir is a dynamic, functional language for building scalable and maintainable applications. Elixir runs on the Erlang VM, known for creating low-latency, distributed, and fault-tolerant systems. Used to power the Phoenix Framework installer. |

### BREW_APPS - Homebrew Cask Applications (macOS)

#### Development

| Application                                      | Description                                                                                                                                                                                                                                                                                                                                                   |
|--------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [dbeaver-community](https://dbeaver.io/)         | DBeaver Community is a free cross-platform database tool for developers, database administrators, analysts, and everyone working with data. It supports all popular SQL databases like MySQL, MariaDB, PostgreSQL, SQLite, Apache Family, and more.                                                                                                           |
| [docker](https://www.docker.com/)                | Docker takes away repetitive, mundane configuration tasks and is used throughout the development lifecycle for fast, easy, and portable application development – desktop and cloud. Docker’s comprehensive end-to-end platform includes UIs, CLIs, APIs, and security that are engineered to work together across the entire application delivery lifecycle. |
| [studio-3t](https://studio3t.com/)               | Studio 3T, the professional GUI for MongoDB. All your IDE, client, and GUI tools for MongoDB – on Atlas, or anywhere.                                                                                                                                                                                                                                         |
| [warp](https://www.warp.dev/)                    | The terminal for the 21st century. Warp is a blazingly fast, Rust-based terminal reimagined from the ground up to work like a modern app.                                                                                                                                                                                                                     |
| [webstorm](https://www.jetbrains.com/webstorm/)  | The smartest JavaScript IDE. WebStorm is an integrated development environment for JavaScript and related technologies. Like other JetBrains IDEs, it makes your development experience more enjoyable, automating routine work and helping you handle complex tasks with ease.                                                                               |
| [pycharm-ce](https://www.jetbrains.com/pycharm/) | The Python IDE for Professional Developers, community edition.                                                                                                                                                                                                                                                                                                |
| [gimp](https://www.gimp.org/)                    | The Free & Open Source Image Editor. This is the official website of the GNU Image Manipulation Program (GIMP). GIMP is a cross-platform image editor available for GNU/Linux, macOS, Windows, and more operating systems. It is free software, you can change its source code and distribute your changes.                                                   |

#### Passwords & Security

| Application                                                       | Description                                                                                                                                                                                                                                    |
|-------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [authy](https://authy.com/)                                       | Enable 2FA for your favorite sites. Go beyond the password and protect yourself from hackers and account takeovers.                                                                                                                            |
| [bitwarden](https://bitwarden.com/)                               | Move fast and securely with the password manager trusted by millions. Drive collaboration, boost productivity, and experience the power of open source with Bitwarden, the easiest way to secure all your passwords and sensitive information. |
| [private-internet-access](https://www.privateinternetaccess.com/) | A VPN You Can Trust. We all need privacy, especially online. Your IP address and your browsing should be hidden from unnecessary surveillance. Rest assured that PIA’s virtual private network never keeps any usage logs — ever.              |

#### Web Browsers

| Application                                     | Description                                                                                                                                                                                                                                           |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [arc](https://arc.net/)                         | We’re imagining a browser that can think as quickly as we do, take work off of our plates, and pull our creativity forward. A browser equipped for the way we use the internet in 2023, and foundational for how we hope to use it in the future.     |
| [brave-browser](https://brave.com/)             | Brave is on a mission to fix the web by giving users a safer, faster, and better browsing experience.                                                                                                                                                 |
| [google-chrome](https://www.google.com/chrome/) | "The faster browser" Chrome is faster than fast – it’s engineered for speed and has the tools to help you get things done quickly. And with automatic updates, you always have the newest version of Chrome with the latest performance improvements. |
| [responsively](https://responsively.app/)       | Develop responsive web apps 5x faster! A must-have DevTool for all Front-End developers that will make your job easier, and it is open-source too! 🎉                                                                                                 |

#### Productivity

| Application                                           | Description                                                                                                                               |
|-------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| [adobe-acrobat-reader](https://get.adobe.com/reader/) | Adobe Acrobat Reader DC software is the free global standard for reliably viewing PDFs.                                                   |
| [appcleaner](https://freemacsoft.net/appcleaner/)     | AppCleaner is a small application that allows you to thoroughly uninstall unwanted apps.                                                  |
| [mailspring](https://www.getmailspring.com/)          | Say hello to Mailspring. Boost your productivity and send better email with Mailspring, the best mail client for Mac, Linux, and Windows. |
| [rectangle](https://rectangleapp.com/)                | Move and resize windows in macOS using keyboard shortcuts or snap areas.                                                                  |
| [zoom](https://zoom.us/)                              | More connected, more collaborative, more intelligent. Zoom's AI-powered platform helps you do more.                                       |

#### Gaming

| Application                                          | Description                                                                                                                                                                                                                                 |
|------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [discord](https://discord.com/)                      | IMAGINE A PLACE where you can belong to a school club, a gaming group, or a worldwide art community. Where just you and a handful of friends can spend time together. A place that makes it easy to talk every day and hang out more often. |
| [steam](https://store.steampowered.com/)             | Steam is the ultimate destination for playing, discussing, and creating games.                                                                                                                                                              |
| [epic-games](https://www.epicgames.com/store/en-US/) | Download and play PC Games of every genre. We have mods, DLC, and Free Games too! Games for everyone.                                                                                                                                       |

## Fonts

[Nerd Fonts](https://www.nerdfonts.com/) are a collection of awesome open source fonts that can be used for development/IDEs/terminal, as well as dev relevant icons and glyphs. 

> Nerd Fonts patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular ‘iconic fonts’ such as Font Awesome, Devicons, Octicons, and others.

```shell         
 ,----.               ,---.                ,--.  ,--.          ,---.        ,------.  ,------.,--.   ,--. 
'  .-./    ,---.     /  .-' ,---. ,--.--.,-'  '-.|  ,---.     |  o ,-.      |  .-.  \ |  .---' \  `.'  /  
|  | .---.| .-. |    |  `-,| .-. ||  .--''-.  .-'|  .-.  |    .'     /_     |  |  \  :|  `--,   \     /   
'  '--'  |' '-' '    |  .-'' '-' '|  |     |  |  |  | |  |    |  o  .__)    |  '--'  /|  `---.   \   /    
 `------'  `---'     `--'   `---' `--'     `--'  `--' `--'     `---'        `-------' `------'    `-'              
```
