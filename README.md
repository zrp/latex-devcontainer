# LaTeX Remote Containers

This repository implements an open-source, config over configuration (CoC), [LaTeX](https://www.latex-project.org/) writing environment suitable
for [Visual Studio Code](https://code.visualstudio.com/) with [Visual Studio Code Remote Extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) and [Docker](https://www.docker.com/).

## Working in this repository

The main folders available for this repository are:

* .devcontainer: Contains all configuration required for running VS Code Remote Containers;
* .vscode: Contains VS Code specific settings for LaTeX Workshop;
* assets: Contains images, files and other assets required by the document;
* docs: Contains .tex files which combined produce the documentation;

Other important files are:

* README.md: **you're here**.

The easiest way to run this project is to install Docker and use [Visual Studio Code Remote Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

This will enable you to start a development environment with Docker, while also installing required extensions, such as [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

It pretty much works flawlessly and independent of environment. On Windows you can also run directly using WSL2 (Windows Subsystem for Linux). To do so, you should follow instructions [in here](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#using-wsl).

Running with Windows Containers may lead to poor performance, and since Windows do not have filesystem events, auto-reload is disabled.

If you prefer doing things manually, you can use any TeX scheme and compiler. But what's is the point of using this repo if you're doing so?

After meeting the requirements above, our recommendation is to clone this repo and open it in Visual Studio Code, then open the `Ctrl + Shift + P` (Command Pallette) and search for `Remote-Containers: Reopen in Container` option.

It may take a while to build the image, but after that no further action is required.

## Build the document

By default, there is a initial document called `main.tex`. Start editing, on save it will automatically build and create a `main.pdf` file. You can manually build using `Ctrl + Shift + P` (Command Pallette) and searching for `LaTeX Workshop: Build LaTeX Project`, or using `Ctrl + Alt + B`.

After the document is built, you can just copy it to your filesystem by drag and dropping the file, or by opening the repository locally and copying the `docs/main.pdf` file to your desired location.

## Spell Checking

To enable different languages, edit the `cSpell.language` on the `.vscode/settings.json` file. You must install the dictionaries by yourself.

By default, spell checking is enabled for "English - US", "Portuguese" and "Portuguese - Brazil".

## Watermark

By default we use the *draftwatermark* package. To replace the watermark, upload your image to `assets/watermark.png`. To remove it, remove the watermark section in the `main.tex` document.
