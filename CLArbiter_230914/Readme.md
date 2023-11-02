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