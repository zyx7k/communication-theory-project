function [inPhaseComponent, quadraturePhaseComponent] = encoder(digitalBits)
    N = length(digitalBits);
    if(mod(N,2)~=0)
        digitalBits = horzcat(digitalBits, 0);
        N = N+1;
    end
    
    inPhaseComponent = [];
    quadraturePhaseComponent = [];

    for k = 1 : N/2
        bit1 = digitalBits(2*k-1);
        bit2 = digitalBits(2*k);
        if(bit1 == 0 && bit2 ==0)
            ak = 1;
            bk = 1;
        elseif(bit1==1 && bit2==0)
            ak = -1;
            bk = 1;
        elseif(bit1==0 && bit2==1)
            ak = 1;
            bk = -1;
        else
            ak = -1;
            bk = -1;
        end
        
        inPhaseComponent = [inPhaseComponent, ak];
        quadraturePhaseComponent = [quadraturePhaseComponent, bk];
    end
end