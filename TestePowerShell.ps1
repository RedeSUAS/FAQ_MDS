$arq = Read-Host -Prompt 'Nome do arquivo que ira converter(sem a extensão)'
$arq += ".docx"

$ldocx = "_docx\$arq"
$ltopicos = "_topicos\"


if (Test-Path $ldocx -PathType Leaf)
{
    "Arquivo encontrado"
    $out = Read-Host -Prompt 'Nome de saida(pode ser o mesmo)'
    $out += ".rst"

    & pandoc $ldocx -o $ltopicos\$out
    
}
else
{
    "Arquivo não existe, tente novamente"
}