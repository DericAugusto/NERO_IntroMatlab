function [nAprovados,nRecuperacao,nReprovados] = categoriaNotas(alunos)
    nAprovados = 0;
    nReprovados = 0;
    nRecuperacao = 0;
    for i=1:10
        if str2double(alunos(i,2))>=60
            nAprovados = nAprovados + 1;
        elseif str2double(alunos(i,2))<40
            nReprovados = nReprovados + 1;
        else
            nRecuperacao = nRecuperacao + 1;
        end
    end    
end

