a=[1,2,3;1,2,3];

t=[0:.1:2*%pi];
d1=gda();               // chwycenie ogólnego opisu figur
d1.auto_clear='off'     // autousuwanie wyłącz
d1.grid=[1,1];          // siatka włącz
d1.axes_visible='on';   // pokaż osie

figure(1);              // tworzy figure 1

f1=get("current_figure")        //ustawienia dla aktualnej figury
f1.color_map=hotcolormap(128)   //przestrzeń kolorów
f1.background=128;              //ustawia kolor tła na biały

subplot(2,1,1);                                 //subplot na 1 miejscu
plot(t,sin(t));                                 //plot sint
xlabel("x","fontsize", 6,"color","red")         //pierw string, potem wartości
ylabel("y", "fontsize", 6, "color", "red")
title("Wykres", "fontsize", 6, "color", "red")

subplot(2,1,2);
plot(t,sin(t));
xlabel("x","fontsize", 6,"color","red")
ylabel("y", "fontsize", 6, "color", "red")
title("Wykres", "fontsize", 6, "color", "red")
