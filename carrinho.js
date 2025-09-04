document.addEventListener('DOMContentLoaded', function() {
    const botoes = document.querySelectorAll('.add-carrinho');
    const carrinhoLista = document.getElementById('carrinho-lista');
    const carrinhoTotal = document.getElementById('carrinho-total');
    const carrinhoContainer = document.getElementById('carrinho-container');
    const carrinhoIcone = document.getElementById('carrinho-icone');
    let carrinho = [];
    let aberto = false;

    function atualizarCarrinho() {
        carrinhoLista.innerHTML = '';
        let total = 0;
        carrinho.forEach((item, idx) => {
            const li = document.createElement('li');
            li.textContent = `${item.nome} - R$ ${item.preco.toFixed(2)}`;
            const btnRemover = document.createElement('button');
            btnRemover.textContent = 'Remover';
            btnRemover.className = 'remover-item';
            btnRemover.onclick = () => {
                carrinho.splice(idx, 1);
                atualizarCarrinho();
            };
            li.appendChild(btnRemover);
            carrinhoLista.appendChild(li);
            total += item.preco;
        });
        carrinhoTotal.textContent = `Total: R$ ${total.toFixed(2)}`;
        // Mostra ou esconde o carrinho conforme necessário
        if (carrinho.length > 0) {
            carrinhoContainer.classList.remove('fechado');
            aberto = true;
        } else {
            carrinhoContainer.classList.add('fechado');
            aberto = false;
        }
    }

    carrinhoIcone.addEventListener('click', function() {
        if (carrinho.length === 0) return;
        aberto = !aberto;
        carrinhoContainer.classList.toggle('fechado', !aberto);
    });

    botoes.forEach(btn => {
        btn.addEventListener('click', function() {
            const card = btn.closest('.produto-card');
            const nome = card.querySelector('h3').textContent;
            const precoTexto = card.querySelector('.preco').textContent.replace('R$', '').replace(',', '.');
            const preco = parseFloat(precoTexto);
            carrinho.push({ nome, preco });
            atualizarCarrinho();
        });
    });

    // Inicialmente fechado
    carrinhoContainer.classList.add('fechado');
});