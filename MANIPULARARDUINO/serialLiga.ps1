# Configurações da porta serial
$portaSerial = New-Object System.IO.Ports.SerialPort
$portaSerial.PortName = "COM30"
$portaSerial.BaudRate = 9600

# Abrir a porta serial
$portaSerial.Open()

# Dados a serem enviados
$dados = "on"

# Convertendo os dados em bytes e enviando
$bytes = [System.Text.Encoding]::ASCII.GetBytes($dados)
$portaSerial.Write($bytes, 0, $bytes.Length)

# Fechar a porta serial após o envio
$portaSerial.Close()

Write-Host "Palavra 'on' enviada para a porta serial COM30 com sucesso."