# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as osquery with context %}

osquery-service-clean-service-dead:
  service.dead:
    - name: {{ osquery.service.name }}
    - enable: False
