/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto_catedra_ayc01t_sl190836_ml190272;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author jony2
 */
public class Main {
    public static void main(String[] args) throws Exception {
        String ruta1 = "C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/Lexer.flex";
        String ruta2 = "C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/LexerCup.flex";
        String[] rutaS = {"-parser", "Sintax", "C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/Sintax.cup"};
        generar(ruta1, ruta2, rutaS);
    }
    public static void generar(String ruta1, String ruta2, String[] rutaS) throws IOException, Exception{
        File archivo;
        archivo = new File(ruta1);
        JFlex.Main.generate(archivo);
        archivo = new File(ruta2);
        JFlex.Main.generate(archivo);
        java_cup.Main.main(rutaS);
        
        Path rutaSym = Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        Files.move(
                Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/sym.java"), 
                Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/sym.java")
        );
        Path rutaSin = Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/Sintax.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/Sintax.java"), 
                Paths.get("C:/Users/jony2/Documents/NetBeansProjects/ReposAYC-Project-CodeMain/src/proyecto_catedra_ayc01t_sl190836_ml190272/Sintax.java")
        );
    }
}
