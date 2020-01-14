# szum_zolw
## Sprawozdanie 1 SZUM
#### Repozytorium zawiera trzy pliki, służące do odpalenia w MATLABie.
Przed odpaleniem plików, należy uruchomić serwer ROS poleceniem w terminalu:
```
roscore
```
Następnie należy uruchomić symulator robota dwukołowego:
```
rosrun turtlesim turtlesim_node
```
W MATALBie nalezy zaś zainicjować połączenie ROS:
```
rosinit
```

Skrypt prostujsie.m odpowiada za wyprostowanie żółwia do pozycji |Theta|<0.001.<br>
Skrypt jedzrzulwiem.m powoduje dojechanie żółwiem do punktu znajdującego się bezpośrednio przed nim<br>
Skrypt krecrzulwiem.m powoduje zataczanie okręgu. 

