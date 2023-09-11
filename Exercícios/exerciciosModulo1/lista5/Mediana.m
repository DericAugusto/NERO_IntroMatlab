function idadeMediana = Mediana(nomes,idades)

    valorMediana = median(idades);
    aux = abs(idades - valorMediana);
    [v,posicaoMediana] = min(aux);
    idadeMediana = nomes(posicaoMediana);
end

