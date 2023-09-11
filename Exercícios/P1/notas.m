function notas(alunos)

    for i=1:10
        if str2double(alunos(i,2))>=60
            fprintf('%d. O aluno (%s) foi aprovado!',i,alunos(i,1));
        elseif str2double(alunos(i,2))<40
            fprintf('%d. O aluno (%s) foi reprovado!',i,alunos(i,1));
        else
            fprintf('%d. O aluno (%s) está de recuperação!',i,alunos(i,1));
        end
        disp(' ');
    end    
end

