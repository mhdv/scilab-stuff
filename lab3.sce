plotdesign=['r-','g--','b+','c-.','m:','y-','k--','r-','g--','b+','c-.','m:','y-','k--'];

A1=1/2;
A2=1/2;
alfa1=(-2+sqrt(2));
alfa2=(-2-sqrt(2));
xw=1;
t=[0:.1:2];
A1=[-1:0.5:1];
A2=[-1:0.5:1];

d1=gda();               // chwycenie ogólnego opisu figur
d1.auto_clear='off'     // autousuwanie wyłącz
d1.grid=[1,1];          // siatka włącz
d1.axes_visible='on';   // pokaż osie

figure(1);              // tworzy figure 1

f1=get("current_figure")        //ustawienia dla aktualnej figury
f1.color_map=hotcolormap(128)   //przestrzeń kolorów
f1.background=128;              //ustawia kolor tła na biały


xlabel("x","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("y", "fontsize", 6, "color", "red")
title("Wykres", "fontsize", 6, "color", "black")
for A1=[-1:0.5:1];
    for A2=[-1:0.5:1]
        plot(t,A1*exp(alfa1*t)+A2*exp(alfa2*t)+xw);
    end
end
