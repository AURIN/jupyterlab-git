# jupyterlab-git

[![Binder](https://beta.mybinder.org/badge.svg)](https://mybinder.org/v2/gh/jupyterlab/jupyterlab-git/master?urlpath=lab)

A JupyterLab extension for version control using git

![](http://g.recordit.co/N9Ikzbyk8P.gif)

## Prerequisites

- JupyterLab  

## Usage

- Open the git extension from the *Git* tab on the left panel

## Install

```bash
jupyter labextension install @jupyterlab/git
```

```bash
pip install jupyterlab-git
jupyter serverextension enable --py jupyterlab_git
```

## Development

### Contributing

If you would like to contribute to the project, please read our [contributor documentation](https://github.com/jupyterlab/jupyterlab/blob/master/CONTRIBUTING.md).

JupyterLab follows the official [Jupyter Code of Conduct](https://github.com/jupyter/governance/blob/master/conduct/code_of_conduct.md).

### Install

Requires node 4+ and npm 4+

```bash
# Clone the repo to your local environment
git clone https://github.com/jupyterlab/jupyterlab-git.git
cd jupyterlab-git
# Install dependencies
npm install # or yarn
# Build Typescript source
npm run build # or yarn build
# Link your development version of the extension with JupyterLab
jupyter labextension link .
# Rebuild Typescript source after making changes
npm run build # or yarn build
```

```bash
pip install .
jupyter serverextension enable --py jupyterlab_git
```

To rebuild the package and the JupyterLab app:

```bash
npm run build
jupyter lab build
```


# Installing on JUNO

This extension has been altered to push all the files in the git directory to a specified remote.

* Build and install the extension "jupyterlab-git" as specified above
* Alter the JUNO-Infra script to copy JUNO-Demo/gitInit.py to each user container.
* The python script gitInit.py needs an github authenticating token, for demo this was kept in config.cfg. Pick it up from environment secrets.
* The github auth token should be generated though JUNO's main github account. All user repos will live in this account.
* Alter the JUNO-Infra user initializing script to include functionality from JUNO-Demo/initUser.sh

## Checking the push functionality

* After user setup, create a notebook and click commit in the extension.
* A new repo will be available in the JUNO account with the notebook already pushed.