# resume_app

A new Flutter project.

## Getting Started

The app is a resume app with brief description and experience of the mobile developer
### Features:
The app consist of three views with the following features:
#### Portfolio
This feature displays the portfolio of the developer in a expanded panelist widget
#### profile
This feature displays the  profile of the developer which include: profile picture, A short description, the developer's social links, Github link and a way to chat the developer via mail
#### Resume
This feature displays the developer's work experience
#### Feature summary
1. Atutomatic Light and Dark Mode (Light mode from 6 am to 7 pm, Night mode during the from 7pm - 6 am)
2. ability to switch to another language automatically (depending on the locale you are located)
3. abilty to send mail to the developer directly via the app
4. ability to view the develper's Github Repositories via the app
5. view developer social pages
6. showcase the developer's past projects
## codebase
the app was built using an MVVM clean architecture in order to aid scalability and add feature first approach features in the future
it consists of a single home page with 3 Tabs(portfolio tab, profile tab and resume tab, which features for each has been discussed above).
### Folder Structure
LIB
  l10n
  Home
    ViewModel
    View
  Profile
    ViewModel
    View
  Resume
    Model
    ViewModel
    View
  Services
    api_services.dart
    lunch_url_service.dart
  Utils
    colors_util.dart
    dimensions.dart
    muilti_providers.dart
    text_utils.dart
    theme_utils.dart
  Widget
    HomeView Widget
    ProfileView Widget
    ResumeView Widget
    SharedWidget
 maim.dart
 app.dart
 app_scroll_behaviour.dart(page view scroll behaviour on chrome)
 
### how it works
on launching the app the user is sent to the home page, with the profile tab displayed first, from where he can navigate to other tabs and access thier features
### The Design
[the design that was given as an example was used due to its simplicity](https://dribbble.com/shots/14436103-Resume-App)
## Libraries
1. Provider Package (To achieve MVVM and future scalability
2. Flutter ScreenUtil Package(For responsiveness)
3. Url Launcher (To Luanch and view web urls, i.e social links, github and send mail to the developer)
4. Font Awesome icons (easy access to Social links icons)
5. Localization and Internationale (To translate to spanish, works depending on your location)

## More Features I would have loved to abb
1. Ability to convert resume to PDF and download
2. I would love to link to a backend i.e firebase to make it dynamic
## Major Challenges 
1. Display  themes automatically, i was able to resolve after browsing the internet and viewing other people's code 
2. Ability to translate Localizations automatically, I was able to resolve after browsing the internet and viewing order people's code
## Links
[apptise.io](https://appetize.io/app/avao7k64eo37o4oinachubthq4?device=pixel4&osVersion=11.0&scale=75)
[app link](https://drive.google.com/file/d/1i6CWBQcgDlVbQaJoQeMG6Zm0Q_-6MIFF/view?usp=share_link)

