using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ProjetoPadrao.BE.Entidade;
using ProjetoPadrao.DAL.Utility;

namespace ProjetoPadrao.DAL.Query
{
    /// <summary>
    /// 
    /// </summary>
    internal class ClassificacaoQuery : IBaseQuery<Classificacao>
    {
        #region [ Variáveis ]

        /// <summary>
        /// Variável que vai armazenar a query.
        /// </summary>
        private StringBuilder query = new StringBuilder();

        #endregion

        #region [ Query ]

        public StringBuilder Insert(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        public StringBuilder Delete(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        public StringBuilder Update(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Query para selecionar uma classificação.
        /// </summary>
        /// <param name="entidade">Identificação da classificação.</param>
        /// <returns></returns>
        public StringBuilder SelectFist(Classificacao entidade)
        {
            this.query.Clear();

            this.query.AppendLine("SELECT	ID_CLASSIFICACAO, ");
            this.query.AppendLine("		TXT_NOME, ");
            this.query.AppendLine("		DSC_COMENTARIO, ");
            this.query.AppendLine("		COD_COR, ");
            this.query.AppendLine("		TXT_COR ");
            this.query.AppendLine("  FROM DBTESTE.DBO.TAB_CLASSIFICACAO ");

            if (!entidade.IdClassificacao.Equals(new long())){
                this.query.AppendLine("  WHERE ID_CLASSIFICACAO = @ID_CLASSIFICACAO ");
            }

            return this.query;
        }

        /// <summary>
        /// Query para selecionar todas classificação.
        /// </summary>
        /// <returns></returns>
        public StringBuilder SelectAll()
        {
            this.query.Clear();

            this.query.AppendLine("SELECT ID_CLASSIFICACAO, ");
            this.query.AppendLine("	TXT_NOME, ");
            this.query.AppendLine("	DSC_COMENTARIO, ");
            this.query.AppendLine("	COD_COR, ");
            this.query.AppendLine("	TXT_COR ");
            this.query.AppendLine("FROM DBTESTE.DBO.TAB_CLASSIFICACAO ");

            return this.query;
        }

        public StringBuilder SelectAll(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
