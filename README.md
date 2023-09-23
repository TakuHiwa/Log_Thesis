# verilog sourcecode

## 1
説明：ラウンドロビンアービタ<br>
内部クロックの立ち上がりに同期してリクエストの占有権が入れ替わります　<br>
実装は、[Round-Robin Arbiter Design in Verilog and SystemVerilog](https://circuitcove.com/design-examples-rr-arbiter/)を参考にしました <br>
マスクという方法を利用しています <br>
優先順位を強制的に変更する役割を果たしています <br> <br>
[RRArbiter](./RRArbiter_230914/Arbiter.sv) <br>

## 2 
説明：ラウンドロビンアービタ（利用中保持）<br>
1のアービタを改善し、リクエストが利用中のときにグラントを入れ替わらないようにしました <br>
内部クロックの立ち上がりに同期して、グラントが変更されれば更新されます <br>
ほぼ完全に動作することに成功しました（下図、23/09/15）<br> <br>

[CLArbiter](./CLArbiter_230914/CLArbiter.sv) <br>
![simulation](./CLArbiter_230914/image/CLArbiter_simulation_4.PNG)  <br>
シミュレーション　ほぼ成功 23/09/15
![simulation](./CLArbiter_230914/image/CLArbiter_simulation_5.PNG)  <br>
アップで 23/09/15

## 3 :new
説明：論理回路で組みなおしたアービタ <br>
![schematic](./Arbiter3_230923/092302.PNG)  <br>
