$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f positioned $(pos) rotated $(rotation) 0 summon marker run function game:map/spawn_gate_markers_init

data remove storage macro tmp_gates[-1]
execute if data storage macro tmp_gates[] run function game:map/spawn_gate_markers with storage macro tmp_gates[-1]