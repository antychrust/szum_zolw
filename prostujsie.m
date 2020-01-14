sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');
wiadomosc = rosmessage(sterowanie.MessageType);
wiadomosc.Linear.X = 1;
polozenie = receive(pozycja,1);
theta = polozenie.Theta;

while(abs(theta)>0.001)
    polozenie=receive(pozycja,1)
    x=polozenie.X
    y=polozenie.Y
    theta=polozenie.Theta
    v=0;
    w=-theta;
    wiadomosc.Linear.X=v;
    wiadomosc.Angular.Z=w;
    send(sterowanie,wiadomosc);
    pause(0.1)
end