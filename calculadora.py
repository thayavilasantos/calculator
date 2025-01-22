# Bem-vindo à calculadora
print("Bem-vindo à calculadora em Python!")

# Lê o primeiro número
num1 = float(input("Digite o primeiro número: "))

# Lê a operação desejada
operacao = input("Escolha a operação (+, -, *, /): ")

# Lê o segundo número
num2 = float(input("Digite o segundo número: "))

# Realiza o cálculo com base na operação escolhida
if operacao == "+":
    resultado = num1 + num2
    print(f"O resultado é: {resultado}")
elif operacao == "-":
    resultado = num1 - num2
    print(f"O resultado é: {resultado}")
elif operacao == "*":
    resultado = num1 * num2
    print(f"O resultado é: {resultado}")
elif operacao == "/":
    if num2 == 0:
        print("Erro: Divisão por zero não é permitida.")
    else:
        resultado = num1 / num2
        print(f"O resultado é: {resultado:.2f}")
else:
    print("Operação inválida.")



