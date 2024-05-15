# PROJETO02

<pre>


  atualização 01 no codigo .ps1
</pre>

<pre>



while ($true) {

# Define as configurações da porta serial
$portaNome = "COM30"
$baudRate = 9600

# Cria um objeto SerialPort
$portaSerial = New-Object System.IO.Ports.SerialPort $portaNome, $baudRate, "None", 8, "One"

# Abre a porta serial
$portaSerial.Open()


# Define o arquivo para armazenar os dados serial
$arquivo = "dados_serial.txt"

try {
   
        if ($portaSerial.BytesToRead -gt 0) {
            $dados = $portaSerial.ReadLine()
            Write-Host "Lido: $dados"
            Set-Content -Path $arquivo -Value $dados
        }
    
}
finally {
    # Fecha a porta serial
    $portaSerial.Close()
}
}
  
</pre>
