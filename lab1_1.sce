QgN=1000;                        // moc grzejnika
TzN=-20;                         // st cel. ~ temperatura na zewnątrz
TwN=20;                          // st cel. ~ temp. wewnątrz
TpN=10;                          // st cel. ~ temp. na poddaszu

Tz=-20:5:20;
Qg=500:250:2500;

//config
colorful=%t;
titlecolor="black";
//config

plotdesign=['r-','g--','b+','c-.','m:','y-','k--','r-','g--','b+','c-.','m:','y-','k--'];

// Dla wartości nominalnych Kcwp Kcw i Kcp

Kcwp=(QgN)/(4*(TwN-TzN)+(TwN-TpN))
Kcw=4*Kcwp
Kcp=(Kcwp*(TwN-TpN))/(TpN-TzN)

//Nominalne.. niepotrzebne
//Tp=(Kcwp*QgN-((Kcwp)^2)*TzN+Kcp*Kcwp*TzN+Kcw*Kcp*TzN)/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);
//Tw=(QgN-Kcw*TzN+Kcp*TzN-Kcp*Tp)/(Kcw);


Tp=(Kcw*Kcp*Tz+Kcw*Qg+Kcwp*Kcw*Tz+Kcwp*Kcp*Tz)/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);
Tw=(Qg+Kcw*Tz+Kcp*Tz-Kcp*Tp)/(Kcw);

d1=gda();               // chwycenie ogólnego opisu figur
d1.auto_clear='off'     // autousuwanie wyłącz
d1.grid=[1,1];          // siatka włącz
d1.axes_visible='on';   // pokaż osie

// WYKRES TZ~TW
figure(1);              // tworzy figure 1

f1=get("current_figure")        //ustawienia dla aktualnej figury
f1.color_map=hotcolormap(128)   //przestrzeń kolorów
f1.background=128;              //ustawia kolor tła na biały

xlabel("Tz","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("Tw", "fontsize", 6, "color", "red")
title("Wykres Tw(Tz)", "fontsize", 6, "color", titlecolor)

for i=1:length(Qg);
    Tp=(Kcw*Kcp*Tz+Kcw*Qg(i)+Kcwp*Kcw*Tz+Kcwp*Kcp*Tz)/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);  // dla kolejnych Qg
    Tw=(Qg(i)+Kcw*Tz+Kcp*Tz-Kcp*Tp)/(Kcw);
    
    if colorful then
        plot(Tz,Tw,plotdesign(i));
    else
        plot(Tz,Tw);
    end
end

// WYKRES TZ~TP
figure(2);              // tworzy figure 1

f2=get("current_figure")        //ustawienia dla aktualnej figury
f2.color_map=hotcolormap(128)   //przestrzeń kolorów
f2.background=128;              //ustawia kolor tła na biały

xlabel("Tz","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("Tp", "fontsize", 6, "color", "red")
title("Wykres Tp(Tz)", "fontsize", 6, "color", titlecolor)

for i=1:length(Qg);
    Tp=(Kcw*Kcp*Tz+Kcw*Qg(i)+Kcwp*Kcw*Tz+Kcwp*Kcp*Tz)/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);  // dla kolejnych Qg
    Tw=(Qg(i)+Kcw*Tz+Kcp*Tz-Kcp*Tp)/(Kcw);
    
    if colorful then
        plot(Tz,Tp,plotdesign(i));
    else
        plot(Tz,Tp);
    end
end

// WYKRES QG~TW
figure(3);              // tworzy figure 1

f3=get("current_figure")        //ustawienia dla aktualnej figury
f3.color_map=hotcolormap(128)   //przestrzeń kolorów
f3.background=128;              //ustawia kolor tła na biały

xlabel("Qg","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("Tw", "fontsize", 6, "color", "red")
title("Wykres Tw(Qg)", "fontsize", 6, "color", titlecolor)

for i=1:length(Qg);
    Tp=(Kcw*Kcp*Tz(i)+Kcw*Qg+Kcwp*Kcw*Tz(i)+Kcwp*Kcp*Tz(i))/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);  // dla kolejnych Qg
    Tw=(Qg+Kcw*Tz(i)+Kcp*Tz(i)-Kcp*Tp)/(Kcw);
    
    if colorful then
        plot(Qg,Tw,plotdesign(i));
    else
        plot(Qg,Tw);
    end
end

// WYKRES QG~TP
figure(4);              // tworzy figure 1

f3=get("current_figure")        //ustawienia dla aktualnej figury
f3.color_map=hotcolormap(128)   //przestrzeń kolorów
f3.background=128;              //ustawia kolor tła na biały

xlabel("Qg","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("Tp", "fontsize", 6, "color", "red")
title("Wykres Tp(Qg)", "fontsize", 6, "color", titlecolor)

for i=1:length(Qg);
    Tp=(Kcw*Kcp*Tz(i)+Kcw*Qg+Kcwp*Kcw*Tz(i)+Kcwp*Kcp*Tz(i))/(Kcwp*Kcp+Kcw*Kcwp+Kcw*Kcp);  // dla kolejnych Qg
    Tw=(Qg+Kcw*Tz(i)+Kcp*Tz(i)-Kcp*Tp)/(Kcw);
    
    if colorful then
        plot(Qg,Tp,plotdesign(i));
    else
        plot(Qg,Tp);
    end
end
