# Contributing

You're probably here because of something new being added to SMBX2, or you found something that's missing, or maybe I got something just plain wrong. The info in this guide might help you.

## General steps

*For if you're unfamiliar with git or LuaCATS*

1. Read the documentation at https://luals.github.io/wiki/ to understand how the language server and type system works.
2. Fork the repository: Click the "Fork" button in the top-right corner of the [main page](). This creates a copy of the repository under your GitHub account.
3. Clone your fork: Clone the forked repository to your local machine by clicking the "Code" button on your fork's GitHub page and copying the URL. Then, run the following command in your terminal: (Make sure you have git installed)
```bash
git clone https://github.com.git
```
4. Create a branch: Navigate into the cloned directory and create a new branch for your changes: (You can also use VSCode to handle this part and onwards)
```bash
cd smbx2-lunalua-luacats
git checkout -b your-branch-name
```
5. Commit your changes: After making changes, add them to Git and commit them:
```bash
git add .
git commit -m "Add a descriptive commit message"
```
6. Push your changes: Push your changes to your fork:
```bash
git push origin your-branch-name
```
7. Open a Pull Request: On your fork's github page, there should be a "Compare & pull request" button. Click on it.

## To-do List

### Unfinished

* [Graphics.lua](/library/Classes/Graphics.lua)
* [Sprite.lua](/library/Classes/Sprite.lua)
* [Darkness.lua](/library/Classes/Darkness.lua)
* [Particles.lua](/library/Classes/Particles.lua)
* [require_utils.lua](/library/Classes/require_utils.lua)
* [json.lua](/library/Classes/json.lua)
* [FileFormats.lua](/library/Classes/FileFormats.lua)
* [Events.lua](/library/Classes/Events.lua)
* [EventManager.lua](/library/Classes/EventManager.lua)
* [Block.lua](/library/Classes/Block.lua) (Field offsets don't state the FIELD_TYPE like other field offset types do)
* [BGO.lua](/library/Classes/BGO.lua) (Descriptions for the fields)
* [Background.lua](/library/Classes/Background.lua)
* [API.lua](/library/Classes/API.lua)
* Anywhere else you see functions or fields that are undocumented

### Unimplemented

* Most [Modules](/library/Modules) (Only add modules that exist in the SMBX2 base game and that are able to be loaded from level/world scripts)

### Other

* Splitting this into two parts, a Lunalua half and a SMBX2 half that depends on Lunalua is the technically correct way to organize this project. I definitely won't be the one to do it though.
