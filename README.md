# verilog sourcecode

## 1
説明：ラウンドロビンアービタ<br>
内部クロックの立ち上がりに同期してリクエストの占有権が入れ替わります　<br>
実装は、[circuitcove.com](https://circuitcove.com/design-examples-rr-arbiter/)を参考にしました <br>
[RRArbiter](./RRArbiter_230914/RRArbiter.sv) <br>
[Arbiter](./RRArbiter_230914/Arbiter.sv) <br>
[Test Bench](./RRArbiter_230914/RRArbiter_TB.sv)  <br>

## 2 :new
説明：改善アービタ<br>
1のアービタを改善し、リクエストが利用中のときにグラントを入れ替わらないようにしました <br>
内部クロックの立ち上がりに同期して、更新するものがある場合は更新されます <br>
現在動作にバグがあり、苦戦中です <br>
マスクがうまく更新されません <br>
[Arbiter](./CLArbiter_230914\CLArbiter.sv)  <br>
[test bench](./CLArbiter_230914\CLArbiter_tb.sv)  <br>
![simulation](./CLArbiter_230914\image/CLArbiter_simulation_1.png)  <br>
