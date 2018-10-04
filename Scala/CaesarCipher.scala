// file: CaesarCipher.pas
// author: John Eletto 
// website: johneletto.com
// github: git.johneletto.com

object CaesarCipher{
    var word = "THIS IS A TEST MESSAGE FROM JOHN ELETTO";
    var shiftAmount = 15;
    val alpha = 'A' to 'Z'

    def main(args: Array[String]) {
        encrypt();
        decrypt();
        solve(26);
    }

    def encrypt(){
        val encrypted = word.map(c => 
            if(c == ' '){
                c
            }
            else {
                alpha((c - 'A' + shiftAmount + 26) % 26)
            }
        )
        word = encrypted;
        println("Encrypted: " + word);
    }

    def decrypt(){
        val decrypted = word.map(c =>
            if(c == ' '){
                c
            } else {
                alpha((c - 'A' - shiftAmount + 26) % 26)
            }
        )

        word = decrypted;
        println("Decrypted: " + word);
    }

    def solve(maxShift: Integer){
        val decrypted = word.map(c =>
            if(c == ' '){
                c
            } else {
                alpha((c - 'A' - maxShift + 26) % 26)
            }
        )

        word = decrypted;
        println("Caesar " + maxShift + ": " + word);

        if(maxShift <= 1){
            return;
        }

        solve(maxShift - 1);
    }
}