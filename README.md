# dotfiles

A place to track all of my configurations. Also helps when setting up a new machine.

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:hgrias/dotfiles.git
$ cd dotfiles
```

Run the install script to install needed dependencies.

```
$ sh install.sh
```

Create the required symlinks via `stow`:

```
stow .
```

## Reference

- [Terminal Setup - Blog Post](https://www.josean.com/posts/terminal-setup)
- [7 Great Tools - Video](https://www.youtube.com/watch?v=mmqDYw9C30I&t=678s)

## Things

<details>
<summary>Package Managers</summary>

- [NVM](https://github.com/creationix/nvm/)
- [Yarn](https://yarnpkg.com/en/)
- [Homebrew](http://brew.sh/)

</details>

<details>
<summary>CLI Tools & Utilities</summary>

- [XCode Command Line Tools](https://developer.apple.com/xcode/downloads/)
- [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Spaceship Prompt for ZSH](https://github.com/spaceship-prompt/spaceship-prompt#oh-my-zsh)
- [Trash](https://github.com/sindresorhus/trash-cli)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
- [rupa’s z](https://github.com/rupa/z/)
- [rebase-editor](https://github.com/hgrias/rebase-editor)

</details>

<details>
<summary>Browsers</summary>

- [Chrome](https://www.google.com/chrome/browser/desktop/)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)

</details>

<details>
<summary>Productivity</summary>

- [Rectangle](https://rectangleapp.com/)
- [Maccy](https://maccy.app/)
- [Raycast](https://www.raycast.com/)
- [1Password](https://1password.com/)
- [Meeting Bar](https://meetingbar.app/)
- [Tick Tick](https://ticktick.com/about/download)
- [Notion](https://www.notion.so/desktop)

</details>

<details>
<summary>Development</summary>

- [Visual Studio Code](https://code.visualstudio.com/)
- [iTerm2](https://www.iterm2.com/)
- [Postman](https://www.getpostman.com/)
- [Docker](https://docs.docker.com/docker-for-mac/install/)
- [XCode](https://developer.apple.com/xcode/)
- [Transmit](https://apps.apple.com/us/app/transmit-5/id1436522307?mt=12)

</details>

<details>
<summary>Design</summary>

- [Figma](https://www.figma.com/downloads/)

</details>

<details>
<summary>Communication</summary>

- [Slack](https://slack.com/downloads/mac)
- [Spark](https://sparkmailapp.com/)
- [Zoom](https://zoom.us/download)

</details>

<details>
<summary>Miscellaneous</summary>

- [Spotify](https://www.spotify.com/us/download/mac/)
<!-- - [Rocket](http://matthewpalmer.net/rocket/) -->

</details>

## Github SSH Key Setup

[Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

[Adding A New SSH Key to Your Github Account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

[Signing GitHub commits with GPG](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)