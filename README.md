# Comtrya-AUR

A Comtrya plugin that adds support for the Arch User Repository (AUR),
allowing you to install AUR packages through Comtrya.

## Table Of Contents
<!--toc:start-->
- [Usage](#usage)
- [Options](#options)
- [Requirements](#requirements)
- [How It Works](#how-it-works)
<!--toc:end-->

## Usage

Use the plugin in your manifests to install AUR packages:

```yaml
action: plugin
repo: JustinBacher/comtrya-aur
version: * # use a tag for a specific version
opts:
  name: nvim-git
```

## Options

This plugin accepts the same options as the built-in `packages` action in Comtrya.

## Requirements

- Arch Linux or an Arch-based distribution
- Comtrya
- Git (for cloning AUR repositories)

## How It Works

The plugin provides a wrapper around the AUR,
allowing Comtrya to install packages from the AUR
that aren't available through the official Pacman repositories.
