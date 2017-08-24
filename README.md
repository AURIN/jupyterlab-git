# jupyterlab-git

Pre-alpha version.  
(not yet published on npm)  
If you want to install & give it a try, clone the repo first & then use the commands below from the cloned directory.


## Prerequisites

* JupyterLab

## Step 1: Installation & Development of the Git plug-in

For a development install (requires npm version 4 or later), do the following in the repository directory:

```bash
npm install
jupyter labextension link .
```

To rebuild the package and the JupyterLab app:

```bash
npm run build
jupyter lab build
```

## Step 2: Installation and activation of Git handler

Installation and activation for jupyterlab_git python handler package (requires anaconda:python version >=3.6.0):

```bash
pip install .
jupyter serverextension enable --py jupyterlab_git
```

Launch JupyterLab & you will see the new Git buttons on the left side of the window.


