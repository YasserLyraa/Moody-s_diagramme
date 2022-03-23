function y = colebrook_white(e,Re,x)
    y = x + 2 * log10(e/3.7 + 2.51/Re * x);
end