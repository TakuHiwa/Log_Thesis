## 1
説明：ラウンドロビンアービタ<br>
内部クロックの立ち上がりに同期してリクエストの占有権が入れ替わります　<br>
実装は、[Round-Robin Arbiter Design in Verilog and SystemVerilog](https://circuitcove.com/design-examples-rr-arbiter/)を参考にしました <br>
マスクという方法を利用しています <br>
優先順位を強制的に変更する役割を果たしています <br> <br>
[RRArbiter](./RRArbiter_230914/Arbiter.sv) <br>