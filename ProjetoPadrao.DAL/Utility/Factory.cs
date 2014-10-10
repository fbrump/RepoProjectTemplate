using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ProjetoPadrao.BE.Entidade;
using ProjetoPadrao.DAL.Repository;
using ProjetoPadrao.DAL.Query;

namespace ProjetoPadrao.DAL.Utility
{
    /// <summary>
    /// 
    /// </summary>
    public class Factory : IFactory
    {
        #region [ Variáveis ]

        /// <summary>
        /// Variável que armazena o tipo da entidade para a fábrica.
        /// </summary>
        private object typeEntity;

        #endregion

        #region [ Construtor ]

        /// <summary>
        /// Construtor da fábrica.
        /// </summary>
        /// <param name="pEntity">Entidade para definer o tipo da fábrica.</param>
        public Factory(object pEntity)
        {
            this.typeEntity = pEntity;
        }

        #endregion

        #region [ Fábricas ]

        /// <summary>
        /// Fábrica que retorna uma instância da Entidade Query a partir
        /// </summary>
        /// <returns>Objeto instanciado</returns>
        public object FactoryQuery()
        {
            if (this.typeEntity is Classificacao)
            {
                return new ClassificacaoQuery();
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// Fábrica que retorna a instância da Entidade Repositório apartir da entidade passada.
        /// </summary>
        /// <param name="pTypeEntity">Tipo da entidade.</param>
        /// <returns>Objeto instanciado.</returns>
        public object FactoryRepository()
        {
            if (this.typeEntity is Classificacao)
            {
                return new ClassificacaoRepository();
            }
            else
            {
                return null;
            }
        }

        #endregion
    }
}
