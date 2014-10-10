using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjetoPadrao.DAL.Utility
{
    /// <summary>
    /// Interface genérica para todos os repositórios, com os principais métodos
    /// de acesso ao banco de dados de costume para todos (CRUD). Essa classe deve
    /// ser implementada passando o tipo do objeto que vai estar sendo implementado
    /// no repositório, normalmente <c>EntidadeRepositório</c> pegando o nome da entidade
    /// sem o repositório e passando como tipo da entidade.
    /// </summary>
    /// <typeparam name="T">O tipo da entidade que deseja estar utilizando no Repositório.</typeparam>
    internal interface IBaseRepository<T>
    {
        /// <summary>
        /// Assinatura do método que insere um objeto de determinada entidade ao
        /// banco de dados.
        /// </summary>
        /// <param name="entidade">Objeto que deseja inserir no banco.</param>
        void Inserir(T entidade);

        /// <summary>
        /// Deleta o objeto do banco de dados.
        /// </summary>
        /// <param name="entidade">Objeto que deseja deletar.</param>
        void Deletar(T entidade);

        /// <summary>
        /// Assinatura do método que atuliza uma determinada entidade,
        /// <para>não esquecer que o código sempre tem que estar preenchido.</para>
        /// </summary>
        /// <param name="entidade"></param>
        void Atualizar(T entidade);

        /// <summary>
        /// <para>Método que retorna o objeto passado <c>entidade</c> com o campo <c>entidade.SeqMenu</c> preenchido.</para>
        /// </summary>
        /// <param name="entidade">Entidade.SeqMenu preenchido.</param>
        /// <returns>Entidade preenchida.</returns>
        T ObterObjeto(T entidade);

        /// <summary>
        /// Assinatura do método que obtem todos os objetos do banco de dados.
        /// </summary>
        /// <returns>Lista de todos os objetos.</returns>
        IList<T> ObterTodos();

        /// <summary>
        /// Assinatura do método que retorna determinados objetos do banco de dados
        /// a partir de uma configuração passada para o mesmo.
        /// </summary>
        /// <param name="entidade">Padrão do objeto que deseja receber (Filtro).</param>
        /// <returns>Lista dos objetos com a caracaterística passada.</returns>
        IList<T> ObterTodosFiltro(T entidade);
    }
}
