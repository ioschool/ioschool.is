---
url: http://ioschool.is/guides/install-js
title: Guide to Installing io.js
site_name: ioschool.is
description: An i/o school guide on how to install io.js.
image: images/icon.png
type: article
layout: index.html
stylesheets:
  - "../bundle.css"
scripts:
  - "../bundle.js"
---

# Guide to Installing [io.js](https://iojs.org)

Are you ready to install [io.js](https://iojs.org) (a [spork](http://thechangelog.com/139/) of [Node.js](https://nodejs.org))? Great! ＼(＾▽＾)／

We're going to use [nvm (Node Version Manager)](https://github.com/creationix/nvm)) to make this easy and awesome.

## Pre-requisities

In order to install [io.js](https://iojs.org), you'll need to make sure your system has a c++ compiler.

For Mac OS X, XCode will work, for Ubuntu, the build-essential and libssl-dev packages work.

## nvm Install

### Automatic

To install nvm you could use the [install script][2] using cURL:

    curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash

or Wget:

    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash

<sub>The script clones the nvm repository to `~/.nvm` and adds the source line to your profile (`~/.bash_profile`, `~/.zshrc` or `~/.profile`).</sub>

You can customize the install source, directory and profile using the `NVM_SOURCE`, `NVM_DIR`, and `PROFILE` variables.
Eg: `curl ... | NVM_DIR=/usr/local/nvm bash` for a global install.

<sub>*NB. The installer can use `git`, `curl`, or `wget` to download `nvm`, whatever is available.*</sub>

### Manual

For manual install create a folder somewhere in your filesystem with the `nvm.sh` file inside it. I put mine in a folder called `nvm`.

Or if you have `git` installed, then just clone it, and check out the latest version:

    git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

To activate nvm, you need to source it from your shell:

    source ~/.nvm/nvm.sh

I always add this line to my `~/.bashrc`, `~/.profile`, or `~/.zshrc` file to have it automatically sourced upon login.
Often I also put in a line to use a specific version of node.

For more help or instructions, see the [nvm README](https://github.com/creationix/nvm/blob/master/README.markdown).

## io.js Install

Once we have `nvm` installed, we can use it to install the latest stable version of io.js.

```
nvm install iojs
nvm use iojs
nvm alias default iojs
```

You should now be able to run `node` (a Node JavaScript interpreter) or `npm` (the Node Package Manager).

Woooo, welcome to the wild world of io.js, let the festivities begin!

(((o(*ﾟ▽ﾟ*)o)))

[1]: https://github.com/creationix/nvm.git
[2]: https://github.com/creationix/nvm/blob/v0.23.3/install.sh
