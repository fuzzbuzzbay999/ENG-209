function accel = accleleration(meterpersec)
    accel = meterpersec *100 / 2.54 / 12;
end


disp(accleleration(1))
