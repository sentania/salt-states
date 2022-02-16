#This is a top file for.  It is applied to all vRA deployed minions - with grains control which pieces are applied and installed.

lab:
  '*':
    - presence
