using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjetoPadrao.DAL.Utility
{
    internal interface IBaseQuery <T>
    {
        /// <summary>
        /// Assinatura do método que insere um objeto de determinada entidade ao
        /// banco de dados.
        /// </summary>
        /// <param name="entidade">Objeto que deseja inserir no banco.</param>
        StringBuilder Insert(T entidade);

        /// <summary>
        /// Deleta o objeto do banco de dados.
        /// </summary>
        /// <param name="entidade">Objeto que deseja deletar.</param>
        StringBuilder Delete(T entidade);

        /// <summary>
        /// Assinatura do método que atuliza uma determinada entidade,
        /// <para>não esquecer que o código sempre tem que estar preenchido.</para>
        /// </summary>
        /// <param name="entidade"></param>
        StringBuilder Update(T entidade);

        /// <summary>
        /// <para>Método que retorna o objeto passado <c>entidade</c> com o campo <c>entidade.SeqMenu</c> preenchido.</para>
        /// </summary>
        /// <param name="entidade">Entidade.SeqMenu preenchido.</param>
        /// <returns>Entidade preenchida.</returns>
        StringBuilder SelectFist(T entidade);

        /// <summary>
        /// Assinatura do método que obtem todos os objetos do banco de dados.
        /// </summary>
        /// <returns>Lista de todos os objetos.</returns>
        StringBuilder SelectAll();

        /// <summary>
        /// Assinatura do método que retorna determinados objetos do banco de dados
        /// a partir de uma configuração passada para o mesmo.
        /// </summary>
        /// <param name="entidade">Padrão do objeto que deseja receber (Filtro).</param>
        /// <returns>Lista dos objetos com a caracaterística passada.</returns>
        StringBuilder SelectAll(T entidade);
    }
}
