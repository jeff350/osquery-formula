# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as osquery with context %}

osquery-package-install-pkg-installed:
  pkg.installed:
    - name: {{ osquery.pkg.name }}
