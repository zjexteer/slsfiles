check_memory:
  local.state.apply:
    - tgt: {{ data ['id'] }}
    - args:
      - mods: memory_check

