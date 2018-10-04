{
    file: CaesarCipher.pas
    author: John Eletto 
    website: johneletto.com
    github: git.johneletto.com
}

Program CaesarCipher(output);

procedure encrypt(var word: string; shiftAmount: integer);
    var
        i: integer;
    begin
        for i := 1 to length(word) do
            case word[i] of
                'A'..'Z': word[i] := chr(ord('A') + (ord(word[i]) - ord('A') + shiftAmount) mod 26);
                ' ': word[i] := ' ';
            end;
        writeln('Encrypted: ', word);
    end;

procedure decrypt(var word: string; shiftAmount: integer);
    var
        i: integer;
    begin
        for i := 1 to length(word) do
            case word[i] of
                'A'..'Z': word[i] := chr(ord('A') + (ord(word[i]) - ord('A') - shiftAmount + 26) mod 26);
                ' ': word[i] := ' ';
            end;
        writeln('Decrypted: ', word);
    end;

procedure solve(var word: string; shiftAmount: integer);
    var
        i: integer;
    begin
        for i := 1 to length(word) do
            case word[i] of
                'A'..'Z': word[i] := chr(ord('A') + (ord(word[i]) - ord('A') - shiftAmount + 26) mod 26);
                ' ': word[i] := ' ';
            end;
        writeln('Caesar ', shiftAmount, ': ', word);
        if(shiftAmount = 1)
        then 
        else solve(word, shiftAmount - 1);

    end;



var
    word: string;
    shiftAmount: integer;

begin
    shiftAmount := 15;
    word := 'THIS IS A TEST MESSAGE FROM JOHN ELETTO';

    encrypt(word, shiftAmount);
    decrypt(word, shiftAmount);
    writeln('Solving:');
    solve(word, 26);
end.