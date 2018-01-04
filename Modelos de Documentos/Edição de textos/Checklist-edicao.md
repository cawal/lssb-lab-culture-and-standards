# Checklist para uma edição de texto mais confiável


## Textos em inglês:

1. Busque em todo o texto por ocorrências do artigo 'a' e do artigo 'an'. Verifique se está corretamente associado ao substantivo.
    - RegEx para busca: \s[Aa]n?\s
    - Regra: 'a' é usado antes de sons consonantais, 'an' é usado antes de sons vocálicos. Porém, note que nem toda palavra iniciada em vogal tem seu primeiro som como vocálico. Verificar se o primeiro som da palavra é semi-vocalíco (/j/, /w/)  em um dicionário com suporte ao alfabeto fonético internacional é uma possibilidade. 
    - Exemplos comuns:
        - a user
        - a UML diagram
        - a union
        - a one-legged man
        - an undisclosed information