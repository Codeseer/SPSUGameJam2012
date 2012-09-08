

var _state, _new, _on_enter, _on_exit, _draw, _temp;

_state = argument0;
_temp = state;

if (state != _state) {
    state_next = _state;
    script_execute(state.on_exit);
    state = _state;
    state_last = _temp;
    script_execute(state.on_enter);
}
