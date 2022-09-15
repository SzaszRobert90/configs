from talon import (
    ctrl,
    noise,
)


def on_pop(active):
    ctrl.mouse_click(button=0, hold=16000)


noise.register("pop", on_pop)
