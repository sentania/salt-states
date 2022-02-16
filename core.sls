include:
  - presence

set_input_grain:
  grains.append:
    - value: {{ pillar['userInput'] }}