#Install the loginsight agent on an operating system

liagentd:
    pkg.installed:
      - name: vRLI-Agent
      - enable: True
      - sources:
        - vRLI: https://sbowestorage.blob.core.windows.net/sbowe-blobs/VMware-Log-Insight-Agent-8.1.0-15876228.noarch_172.26.1.40.rpm
    
    service.running:
      - require:
        - pkg: vRLI-Agent
      - names:
        - liagentd
