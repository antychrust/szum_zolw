sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');
wiadomosc = rosmessage(sterowanie.MessageType);
wiadomosc.Linear.X = 1;
polozenie = receive(pozycja,1);
theta = polozenie.Theta;

odl=1;

for t=0:0.1:odl
    polozenie=receive(pozycja,1)
    x=polozenie.X
    y=polozenie.Y
    theta=polozenie.Theta
    v=0.5;
    wiadomosc.Linear.X=v;
    send(sterowanie,wiadomosc);
    pause(0.1)
end