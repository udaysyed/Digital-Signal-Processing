for n=-5:5
    a(n+6)=n  %% a(0) can't exist in matlab so to make the index 1,6 was added.a just holds the values generated by the above loop
    
    y=step_fun(a(n+6));
    stem(a(n+6),y);
    hold on
end
axis([-5 5 -1 2])