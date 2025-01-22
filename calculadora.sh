#!/bin/bash

# Bem-vindo à calculadora
echo "Bem-vindo à calculadora em Shell Script!"

# Lê o primeiro número
read -p "Digite o primeiro número: " num1

# Lê a operação desejada
read -p "Escolha a operação (+, -, *, /): " operacao

# Lê o segundo número
read -p "Digite o segundo número: " num2

# Realiza o cálculo com base na operação escolhida
case $operacao in
  "+")
    resultado=$(echo "$num1 + $num2" | bc)
    echo "O resultado é: $resultado"
    ;;
  "-")
    resultado=$(echo "$num1 - $num2" | bc)
    echo "O resultado é: $resultado"
    ;;
  "*")
    resultado=$(echo "$num1 * $num2" | bc)
    echo "O resultado é: $resultado"
    ;;
  "/")
    if [ "$num2" -eq 0 ]; then
      echo "Erro: Divisão por zero não é permitida."
    else
      resultado=$(echo "scale=2; $num1 / $num2" | bc)
      echo "O resultado é: $resultado"
    fi
    ;;
  *)
    echo "Operação inválida."
    ;;
esac

