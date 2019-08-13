{%- if salt['grains.get']('pythonversion','')[0] == '3' %}
  {%- set pythonversion = '3' %}
{%- else %}
  {%- set pythonversion = '' %}
{%- endif %}

python{{ pythonversion }}-dateutil:
  pkg.installed

python{{ pythonversion }}-django:
  pkg.installed:
    - require:
      - pkg: python{{ pythonversion }}-dateutil
