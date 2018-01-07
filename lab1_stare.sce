TzewN=-20;
TwewN=20;
TpN=10;
QgN=1000;

Tzew0=-20:5:20;
Qg0=500:250:2500;

Kcw=(QgN)/(1.25*TwewN - TzewN - 0.25*TpN)
Kcp=(Kcw*(TwewN-TpN))/(4*TpN-4*TzewN)
Kcwp=0.25*Kcw

Tp0=(Kcwp*Qg0+Kcwp*Kcw*Tzew0+Kcw*Kcp*Tzew0+Kcwp*Kcp*Tzew0)/(Kcwp^2+Kcwp*Kcp+Kcwp*Kcw+Kcw*Kcp-Kcwp*Kcw)
Twew0=(Qg0+Kcw*Tzew0+Kcwp*Tp0)/(Kcw+Kcwp)

figure(1)

for i=1:length(Qg0);
    
    Tp0=(Kcwp*Qg0(i)+Kcwp*Kcw*Tzew0+Kcw*Kcp*Tzew0+Kcwp*Kcp*Tzew0)/(Kcwp^2+Kcwp*Kcp+Kcwp*Kcw+Kcw*Kcp-Kcwp*Kcw)
    Twew0=(Qg0(i)+Kcw*Tzew0+Kcwp*Tp0)/(Kcw+Kcwp)
    
    plot(Tzew0, Twew0)
end
