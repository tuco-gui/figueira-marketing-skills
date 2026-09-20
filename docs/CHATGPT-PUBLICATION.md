# Publicação no ChatGPT Web — Figueira Content Squad

## Objetivo

Publicar o mesmo pacote canônico `plugins/figueira-content-squad/` no diretório universal de plugins da OpenAI, compartilhado por ChatGPT e Codex. Não criar fork ou cópia "Web".

## Pré-requisitos da conta OpenAI

- organização/projeto da OpenAI usado para a submissão;
- identidade de desenvolvedor ou empresa verificada;
- permissão **App Management: Write** para quem fará o envio (owners já possuem a permissão correspondente).

## Pacote

No checkout sincronizado deste repositório:

```bash
bash scripts/package-content-squad.sh
```

Saída esperada:

```text
dist/Figueira-Content-Squad-OpenAI-1.1.0.zip
```

O script valida manifesto, limites de metadados, prompts iniciais, assets quadrados, presença das cinco skills e os oito casos de revisão antes de gerar o ZIP.

## Portal

1. Abra o portal de submissão de plugins da OpenAI.
2. Selecione **Create plugin**.
3. Escolha **Skills only**.
4. Faça upload de `Figueira-Content-Squad-OpenAI-1.1.0.zip`.
5. Use os campos de `plugins/figueira-content-squad/submission/OPENAI-DIRECTORY.md`.
6. Cadastre os cinco testes positivos e três negativos de `submission/TEST-CASES.md`.
7. Escolha a disponibilidade geográfica apropriada.
8. Revise as declarações de conformidade e envie para revisão.

## Estado de distribuição

- Marketplace GitHub: desenvolvimento/teste e instalação no Codex.
- Diretório público OpenAI: distribuição Web/ChatGPT após aprovação.
- Workspace compatível: pode importar o marketplace GitHub para uso privado sem esperar publicação pública.

## Fonte de verdade

Toda alteração futura deve ocorrer primeiro em `plugins/figueira-content-squad/`. Uma nova versão pública deve ser empacotada a partir desse estado e reenviada para revisão.
