# Contador do Amor

Este é um aplicativo simples em Flutter chamado "Contador do Amor" que conta o tempo até uma data especial, o aniversário do autor com sua incrível [namorada](https://github.com/GabriellaSierra), e também possui uma galeria de fotos para compartilhar momentos juntos. O aplicativo possui duas telas principais:

## Página de Contagem Regressiva:
- Mostra um contador regressivo para uma data específica.
- Utiliza um ícone de coração no centro, com o tempo restante sobreposto.
- Quando a data é atingida, exibe uma mensagem indicando que a data alvo foi atingida.
- Um botão "Alguns momentos juntos" direciona para a segunda tela.

## Página da Galeria de Fotos:
- Exibe uma galeria de fotos usando o pacote `carousel_slider`.
- As fotos estão pré-carregadas em uma lista.
- As opções do carrossel permitem ajustar a aparência e comportamento da galeria.

### Recursos:
- Uso de `Timer` para atualizar dinamicamente a contagem regressiva.
- Integração de ícones da biblioteca `font_awesome_flutter`.
- Utilização de temas e cores personalizadas para estilizar o aplicativo.
- Navegação entre telas usando `Navigator`.
- Exibição de imagens usando `Image.asset`.
- Utilização de `carousel_slider` para criar uma galeria de fotos deslizante.

## 🚀 Usando AppAmor

Para instalar o AppAmor, siga estas etapas:

1. Certifique-se de ter o Flutter SDK instalado e configurado no seu ambiente de desenvolvimento.
2. Clone este repositório em seu ambiente local.
3. Abra o projeto em seu editor de código preferido.
4. Execute o aplicativo em um emulador ou dispositivo conectado usando o comando

Windows:

```
flutter run
```


### Notas:
- Certifique-se de ter as dependências necessárias instaladas, conforme especificado no arquivo `pubspec.yaml`.
- As imagens na galeria estão sendo carregadas a partir dos arquivos locais fornecidos na lista `fotos` na classe `FotoPage`.

## 🤝 Autor:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/Poliester2005" title="eu">
        <img src="https://avatars.githubusercontent.com/u/107966984?v=4" width="100px;" alt="Foto do Eduardo Pielich no GitHub"/><br>
        <sub>
          <b>Eduardo Pielich</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

