using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ProjetoPadrao.DAL.Utility;
using ProjetoPadrao.DAL.Query;
using ProjetoPadrao.BE.Entidade;
using System.Data;
using System.Data.SqlClient;

namespace ProjetoPadrao.DAL.Repository
{
    public class ClassificacaoRepository : BaseRepositorySql, IBaseRepository<Classificacao>
    {
        #region [ Propriedades de Apoio ]

        private ClassificacaoQuery queryClassificacao = null;
        /// <summary>
        /// Propriedade com as querys da tabela.
        /// </summary>
        private ClassificacaoQuery QueryClassificacao {
            get {
                return this.queryClassificacao ?? new ClassificacaoQuery();
            }
        }

        private Factory factoryClassificacao = null;
        /// <summary>
        /// Definição da fábrica de classificação.
        /// </summary>
        private Factory FactoryClassificacao {
            get {
                return this.factoryClassificacao ?? new Factory(new Classificacao());
            }
        }

        #endregion

        #region [ Método Público ]

        public void Inserir(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        public void Deletar(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        public void Atualizar(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Repositório que obtém um objeto todo prenchido a partir da identificação (ID) dele.
        /// </summary>
        /// <param name="entidade">Id da classificação.</param>
        /// <returns>Classificação toda preenchida.</returns>
        public Classificacao ObterObjeto(Classificacao entidade)
        {
            Classificacao classificacao = new Classificacao();

            try
            {

                DataRow dr = base.GetFirst(this.QueryClassificacao.SelectFist(entidade), this.ConstruirListaParametros(entidade));

                if (dr != null) {
                    classificacao = new Classificacao(){
                        IdClassificacao = long.Parse(dr["ID_CLASSIFICACAO"].ToString()),
                        TxtNome = dr["TXT_NOME"].ToString().Trim(),
                        DscComentario = dr["DSC_COMENTARIO"].ToString().Trim(),
                        CodCor = dr["COD_COR"].ToString().Trim(),
                        TxtCor = dr["TXT_COR"].ToString().Trim()
                    };
                }
            }
            catch (Exception) { throw; }

            return classificacao;
        }

        /// <summary>
        /// Método público que obtém todas as classificações.
        /// </summary>
        /// <returns></returns>
        public IList<Classificacao> ObterTodos()
        {
            IList<Classificacao> lstClassificacoes = new List<Classificacao>();

            try
            {
                DataTable dt =  base.GetAll(this.QueryClassificacao.SelectAll());

                foreach (DataRow dr in dt.Rows)
                {
                    lstClassificacoes.Add(new Classificacao() {
                        IdClassificacao = long.Parse(dr["ID_CLASSIFICACAO"].ToString()),
                        TxtNome = dr["TXT_NOME"].ToString().Trim(),
                        DscComentario = dr["DSC_COMENTARIO"].ToString().Trim(),
                        CodCor = dr["COD_COR"].ToString().Trim(),
                        TxtCor = dr["TXT_COR"].ToString().Trim()

                    });
                }

            }
            catch (Exception) { throw; }

            return lstClassificacoes;
        }

        public IList<Classificacao> ObterTodosFiltro(Classificacao entidade)
        {
            throw new NotImplementedException();
        }

        #endregion

        #region [ Método Privado ]

        /// <summary>
        /// Método privado que controe os parâmetros que serão passados para a query.
        /// </summary>
        /// <param name="pQuery"></param>
        /// <param name="pEntidade"></param>
        /// <returns></returns>
        private List<SqlParameter> ConstruirListaParametros(Classificacao pEntidade)
        {
            List<SqlParameter> lstParameters = new List<SqlParameter>();

            if (!pEntidade.IdClassificacao.Equals(new long())) {
                lstParameters.Add(new SqlParameter("ID_CLASSIFICACAO",pEntidade.IdClassificacao));
            }
            else if (!string.IsNullOrEmpty(pEntidade.TxtNome))
            {
                lstParameters.Add(new SqlParameter("TXT_NOME", pEntidade.TxtNome));
            }
            else if (!string.IsNullOrEmpty(pEntidade.DscComentario))
            {
                lstParameters.Add(new SqlParameter("DSC_COMENTARIO", pEntidade.DscComentario));
            }
            else if (!string.IsNullOrEmpty(pEntidade.CodCor))
            {
                lstParameters.Add(new SqlParameter("COD_COR", pEntidade.CodCor));
            }
            else if (!string.IsNullOrEmpty(pEntidade.TxtCor))
            {
                lstParameters.Add(new SqlParameter("TXT_COR", pEntidade.TxtCor));
            }

            return lstParameters;
        }

        #endregion
    }
}
