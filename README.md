# PIP Plugin for PDC

PIP installer plugin for [Personal Distro Configurator](https://github.com/personal-distro-configurator/personal-distro-configurator/).

## Getting Started

Add on your `pdc.yml` file:

```
plugins:
  get:
    - personal-distro-configurator/pdc-pip-plugin
```

Then add all pip dependencies you want to install on your `pdc.yml` file:

```
pip:
  install:
    -
```

To execute this installer, add on your execute list:

```
execute:
  - plugin pip
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
