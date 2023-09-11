function [classificacao] = classIMC(IMC)
    
    if IMC < 18.5
        classificacao = 'magreza';
    elseif IMC < 24.9
        classificacao = 'normal';
    elseif IMC < 39.9
        classificacao = 'obesidade';
    else
        classificacao = 'obesidade grave';
    end

end

