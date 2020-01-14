sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');
wiadomosc = rosmessage(sterowanie.MessageType);
wiadomosc.Linear.X = 1;
polozenie = receive(pozycja,1);
for t=0:0.1:10
    wiadomosc.Angular.Z=1;
    send(sterowanie, wiadomosc)
    pause(0.1)
end