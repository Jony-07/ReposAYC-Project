/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto_catedra_ayc01t_sl190836_ml190272;

import java.awt.Color;
import java.awt.Font;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringReader;
import java.nio.file.Files;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.Symbol;
import javax.swing.JFileChooser;
/**
 *
 * @author jony2
 */
public class Frm_Principal extends javax.swing.JFrame {

    /**
     * Creates new form Frm_Principal
     */
    public Frm_Principal() {
        initComponents();
        //Localizar al centro
        setLocationRelativeTo(null);
       
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        Text_receive = new javax.swing.JTextArea();
        jScrollPane3 = new javax.swing.JScrollPane();
        Text_send = new javax.swing.JTextArea();
        Btn_Info = new javax.swing.JButton();
        Btn_Lexico = new javax.swing.JButton();
        Btn_Sintactico = new javax.swing.JButton();
        Btn_Ejecutar = new javax.swing.JButton();
        Btn_Clean = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        Btn_OutS = new javax.swing.JButton();
        Btn_Close = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                formMouseDragged(evt);
            }
        });
        addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                formMousePressed(evt);
            }
        });

        jPanel1.setBackground(new java.awt.Color(37, 165, 163));

        Text_receive.setColumns(20);
        Text_receive.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        Text_receive.setRows(5);
        Text_receive.setFocusable(false);
        jScrollPane2.setViewportView(Text_receive);

        Text_send.setColumns(20);
        Text_send.setFont(new java.awt.Font("Times New Roman", 0, 14)); // NOI18N
        Text_send.setRows(5);
        jScrollPane3.setViewportView(Text_send);

        Btn_Info.setFont(new java.awt.Font("Trebuchet MS", 1, 14)); // NOI18N
        Btn_Info.setText("Abrir Archivo");
        Btn_Info.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_InfoActionPerformed(evt);
            }
        });

        Btn_Lexico.setFont(new java.awt.Font("Trebuchet MS", 1, 14)); // NOI18N
        Btn_Lexico.setText("Analizador Léxico");
        Btn_Lexico.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_LexicoActionPerformed(evt);
            }
        });

        Btn_Sintactico.setFont(new java.awt.Font("Trebuchet MS", 1, 14)); // NOI18N
        Btn_Sintactico.setText("Analizador Sintáctico");
        Btn_Sintactico.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_SintacticoActionPerformed(evt);
            }
        });

        Btn_Ejecutar.setFont(new java.awt.Font("Trebuchet MS", 1, 14)); // NOI18N
        Btn_Ejecutar.setText("Ejecutar Setencia");
        Btn_Ejecutar.setEnabled(false);

        Btn_Clean.setBackground(new java.awt.Color(255, 0, 51));
        Btn_Clean.setFont(new java.awt.Font("Trebuchet MS", 1, 14)); // NOI18N
        Btn_Clean.setForeground(new java.awt.Color(255, 255, 255));
        Btn_Clean.setText("Clear");
        Btn_Clean.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_CleanActionPerformed(evt);
            }
        });

        jPanel2.setBackground(new java.awt.Color(4, 101, 130));

        Btn_OutS.setBackground(new java.awt.Color(255, 0, 51));
        Btn_OutS.setFont(new java.awt.Font("Dialog", 1, 16)); // NOI18N
        Btn_OutS.setForeground(new java.awt.Color(255, 255, 255));
        Btn_OutS.setText("<");
        Btn_OutS.setFocusable(false);
        Btn_OutS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_OutSActionPerformed(evt);
            }
        });

        Btn_Close.setBackground(new java.awt.Color(255, 0, 51));
        Btn_Close.setFont(new java.awt.Font("Dialog", 1, 16)); // NOI18N
        Btn_Close.setForeground(new java.awt.Color(255, 255, 255));
        Btn_Close.setText("X");
        Btn_Close.setFocusable(false);
        Btn_Close.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Btn_CloseActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Century Gothic", 1, 38)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Analizador Léxico y Sintáctico");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Btn_OutS)
                .addGap(11, 11, 11)
                .addComponent(Btn_Close)
                .addContainerGap())
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(231, 231, 231)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Btn_OutS)
                    .addComponent(Btn_Close))
                .addGap(18, 18, 18)
                .addComponent(jLabel1)
                .addContainerGap(54, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(89, 89, 89)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 830, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addComponent(Btn_Info, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(41, 41, 41)
                                    .addComponent(Btn_Lexico, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(Btn_Sintactico)
                                    .addGap(53, 53, 53)
                                    .addComponent(Btn_Ejecutar, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addComponent(jScrollPane3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 830, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(461, 461, 461)
                        .addComponent(Btn_Clean, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(96, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(27, 27, 27)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 32, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Btn_Info)
                    .addComponent(Btn_Lexico)
                    .addComponent(Btn_Sintactico)
                    .addComponent(Btn_Ejecutar))
                .addGap(35, 35, 35)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(Btn_Clean)
                .addContainerGap())
        );

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void analizarLexico() throws IOException{
        int cont = 1;
        
        String expr = (String) Text_send.getText();
        Lexer lexer;
        lexer = new Lexer(new StringReader(expr));
        String resultado = "";
        while (true) {
            Tokens token = lexer.yylex();
            if (token == null) {
                Text_receive.setText(resultado);
                return;
            }
            switch (token) {
                case Linea:
                    cont++;
                    resultado += "  LINEA " + cont + "";
                    break;
                case T_dato:
                    resultado += "  <Tipo de dato> " + lexer.lexeme + " ";
                    break;
                case CREATE:
                    resultado += "  <CREATE> " + lexer.lexeme + " ";
                    break;
                case DATABASE:
                    resultado += "  <DATABASE> " + lexer.lexeme + " ";
                    break;
                case DROP:
                    resultado += "  <DROP> " + lexer.lexeme + " ";
                    break;
                case USE:
                    resultado += "  <USE> " + lexer.lexeme + " ";
                    break;
                case TABLE:
                    resultado += "  <TABLE> " + lexer.lexeme + " ";
                    break;
                case SELECT:
                    resultado += "  <SELECT> " + lexer.lexeme + " ";
                    break;
                case All:
                    resultado += "  <*> " + lexer.lexeme + " ";
                    break;
                case FROM:
                    resultado += "  <FROM> " + lexer.lexeme + " ";
                    break;
                case COMILLA:
                    resultado += "  <'> " + lexer.lexeme + " ";
                    break;
                case Parentesis_a:
                    resultado += "  <(> " + lexer.lexeme + " ";
                    break;
                case Parentesis_c:
                    resultado += "  <)> " + lexer.lexeme + " ";
                    break;
                case Llave_a:
                    resultado += "  <{> " + lexer.lexeme + " ";
                    break;
                case Llave_c:
                    resultado += "  <}> " + lexer.lexeme + " ";
                    break;
                case Corchete_a:
                    resultado += "  <[> " + lexer.lexeme + " ";
                    break;
                case Corchete_c:
                    resultado += "  <]> " + lexer.lexeme + " ";
                    break;
                case P_coma:
                    resultado += "  <;> " + lexer.lexeme + " ";
                    break;
                case Op_logico:
                    resultado += "  <Operador Lógico> " + lexer.lexeme + " ";
                    break;
                case Op_relacional:
                    resultado += "  <Operador Relacional> " + lexer.lexeme + " ";
                    break;
                case C_seleccion:
                    resultado += "  <Criterio de Seleccion> " + lexer.lexeme + " ";
                    break;
                case Identificador:
                    resultado += "  <Identificador> " + lexer.lexeme + " ";
                    break;
                case Numero:
                    resultado += "  <Numero> " + lexer.lexeme + " ";
                    break;
                case ERROR:
                    resultado += "  <Simbolo no definido> ";
                    break;
                default:
                    resultado += "  < " + lexer.lexeme + " > ";
                    break;
            }
        }
    }
    private void Btn_CloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_CloseActionPerformed
        System.exit(0);
    }//GEN-LAST:event_Btn_CloseActionPerformed
    int xx,xy;
    private void formMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMousePressed
        // TODO add your handling code here:
        xx=evt.getX();
        xy=evt.getY();
    }//GEN-LAST:event_formMousePressed

    private void formMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMouseDragged
        // TODO add your handling code here:
        int x=evt.getXOnScreen();
        int y =evt.getYOnScreen();
        this.setLocation(x-xx,y-xy);
    }//GEN-LAST:event_formMouseDragged

    private void Btn_OutSActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_OutSActionPerformed
        // TODO add your handling code here:
        Fem_Login log = new Fem_Login();
        log.setVisible(true);
        dispose();
    }//GEN-LAST:event_Btn_OutSActionPerformed

    private void Btn_CleanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_CleanActionPerformed
        // TODO add your handling code here:
        Text_send.setText(null);
        Text_receive.setText(null);
        Text_send.requestFocus();
    }//GEN-LAST:event_Btn_CleanActionPerformed

    private void Btn_InfoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_InfoActionPerformed
        // TODO add your handling code here:
      JFileChooser chooser = new JFileChooser();
        chooser.showOpenDialog(null);
        File archivo = new File(chooser.getSelectedFile().getAbsolutePath());
        
        try {
            String ST = new String(Files.readAllBytes(archivo.toPath()));
            Text_send.setText(ST);
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Frm_Principal.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Frm_Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_Btn_InfoActionPerformed

    private void Btn_LexicoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_LexicoActionPerformed
        // TODO add your handling code here:
          try {
            analizarLexico();
        } catch (IOException ex) {
            Logger.getLogger(Frm_Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_Btn_LexicoActionPerformed

    private void Btn_SintacticoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Btn_SintacticoActionPerformed
        // TODO add your handling code here:
         String ST = Text_send.getText();
        Sintax s = new Sintax(new proyecto_catedra_ayc01t_sl190836_ml190272.LexerCup(new StringReader(ST)));
        try {
            s.parse();
            Text_receive.setText("SINTAXIS CORRECTA.");
            Text_receive.setForeground(new Color(25, 111, 61));
            Text_receive.setFont(new Font("Times New Roman", 14, 14));
            Btn_Ejecutar.setEnabled(true);
        } catch (Exception ex) {
            Symbol sym = s.getS();
            
            Text_receive.setText("ERROR SINTÁCTICO. LINEA: " + (sym.right + 1) + " COLUMNA: " + (sym.left + 1) + ", TEXTO: \"" + sym.value + "\"");
            Text_receive.setForeground(Color.red);
            Text_receive.setFont(new Font("Times New Roman", 14, 14));
        }
    }//GEN-LAST:event_Btn_SintacticoActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Frm_Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Frm_Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Frm_Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Frm_Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Frm_Principal().setVisible(true);
            }
        });
    }
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Btn_Clean;
    private javax.swing.JButton Btn_Close;
    private javax.swing.JButton Btn_Ejecutar;
    private javax.swing.JButton Btn_Info;
    private javax.swing.JButton Btn_Lexico;
    private javax.swing.JButton Btn_OutS;
    private javax.swing.JButton Btn_Sintactico;
    private javax.swing.JTextArea Text_receive;
    private javax.swing.JTextArea Text_send;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    // End of variables declaration//GEN-END:variables
}
