#Install the loginsight agent on an operating system

liagentd:
    pkg.installed:
      - name: vRLI-Agent
      - enable: True
      - sources:
        {% if grains['os_family'] == 'RedHat' %}
        - vRLI: https://sbowestorage.blob.core.windows.net/sbowe-blobs/VMware-Log-Insight-Agent-8.1.0-15876228.noarch_172.26.1.40.rpm
        {% elif grains['os_family'] == 'Debian' %}
        - vRLI: https://sbowestorage.blob.core.windows.net/sbowe-blobs/vmware-log-insight-agent_8.1.0-15876228_all_172.26.1.40.deb
    
    service.running:
      - require:
        - pkg: vRLI-Agent
      - names:
      {% if grains['os_family'] == 'RedHat' %}
        - liagentd
