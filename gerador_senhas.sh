#!/data/data/com.termux/files/usr/bin/bash

# Função para gerar senha
gerar_senha() {
    comprimento=$1
    senha=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c "$comprimento")
    echo "Senha gerada: $senha"
    echo "Obrigado por usar o programa :)"
}

# MSG
    echo "Hello, Bem-vindo ao meu gerador de senhas"
    echo "Digite o tamanho da senha desejado:"
read tamanho

# Verifica se o usuário digitou um número válido
if [[ "$tamanho" =~ ^[0-9]+$ ]]; then
    gerar_senha "$tamanho"
else
    echo "Erro: Por favor, reinicie o programa e digite um número válido!"
fi


