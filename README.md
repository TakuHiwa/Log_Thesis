# verilog sourcecode

## 1
説明：ラウンドロビンアービタ<br>
内部クロックの立ち上がりに同期してリクエストの占有権が入れ替わります　<br>
実装は、[Round-Robin Arbiter Design in Verilog and SystemVerilog](https://circuitcove.com/design-examples-rr-arbiter/)を参考にしました <br>
マスクという方法を利用しています <br>
優先順位を強制的に変更する役割を果たしています <br>
[RRArbiter](./RRArbiter_230914/RRArbiter.sv) <br>
[Arbiter](./RRArbiter_230914/Arbiter.sv) <br>
[Test Bench](./RRArbiter_230914/RRArbiter_TB.sv)  <br>

## 2 :new
説明：ラウンドロビンアービタ（利用中保持）<br>
1のアービタを改善し、リクエストが利用中のときにグラントを入れ替わらないようにしました <br>
内部クロックの立ち上がりに同期して、グラントが変更されれば更新されます <br>
ほぼ完全に動作することに成功しました（下図3、23/09/15）<br>
[Arbiter](./CLArbiter_230914/CLArbiter.sv)  <br>
[test bench](./CLArbiter_230914/CLArbiter_tb.sv)  <br>
![simulation](./CLArbiter_230914/image/CLArbiter_simulation_1.PNG)  <br>
図1：シミュレーション　バグあり 23/09/14
![simulation](./CLArbiter_230914/image/CLArbiter_simulation_3.PNG)  <br>
図2：シミュレーション　修正したがバグ 23/09/15
![simulation](./CLArbiter_230914/image/CLArbiter_simulation_2.PNG)  <br>
図3：シミュレーション　ほぼ成功 23/09/15