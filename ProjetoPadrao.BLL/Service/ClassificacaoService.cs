using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ProjetoPadrao.DAL.Repository;
using ProjetoPadrao.BE.Entidade;
using ProjetoPadrao.BLL.Utility;

namespace ProjetoPadrao.BLL.Service
{
    /// <summary>
    /// Classe que contém todos os serviços (regras de negócio) de classificação.
    /// </summary>
    public class ClassificacaoService : BaseService
    {
        #region [ Propriedades de Apoio ]

        private ClassificacaoRepository repositoryClassificacao = null;
        /// <summary>
        /// Propriedade do repositório de classificação.
        /// </summary>
        private ClassificacaoRepository RepositoryClassificacao {
            get { return this.repositoryClassificacao = 
                this.repositoryClassificacao ?? new ClassificacaoRepository(); }
        }

        #endregion

        #region [ Serviços ]

        /// <summary>
        /// Serviço que preenche a <c>Dropdownlist</c> (<c>Select</c>) de Classificação de atrito.
        /// </summary>
        /// <param name="pClassificacao">Filtro que deseja aplicar na consulta.</param>
        /// <returns></returns>
        public IList<Classificacao> PreencherDropdownClassificalao(Classificacao pClassificacao) {
            return this.RepositoryClassificacao.ObterTodos();
        }

        /// <summary>
        /// Serviço que obtem uma classificação toda preenchida a apartir do identificador da mesma.
        /// </summary>
        /// <param name="pClassificacao"></param>
        /// <returns></returns>
        public Classificacao ObterClassificacao(Classificacao pClassificacao)
        {
            return this.RepositoryClassificacao.ObterObjeto(pClassificacao);
        }

        #endregion

        #region [ Métodos Privados ]

        #endregion

        /// <summary>
        /// Serviço que retorna a lista para poupular uma dropdown (select) com as cores presentes no sistema.
        /// </summary>
        /// <returns>Dicionário preenchido.</returns>
        public Dictionary<string, string> PreencherDropdownCor()
        {
            Dictionary<string, string> dicColor = new Dictionary<string, string>();

            dicColor.Add("-1", "Selecione");
            dicColor.Add("#FFFA00", "Amarelo");
            dicColor.Add("#F3F975", "Amarelo Paco");
            dicColor.Add("#0037FF", "Azul");
            dicColor.Add("#5A80FC", "Azul Claro");
            dicColor.Add("#7F7A7A", "Cinza Escuro");
            dicColor.Add("#FC7676", "Rosa");
            dicColor.Add("#6A00FF", "Roxo");
            dicColor.Add("#A983E2", "Roxo Claro");
            dicColor.Add("#0F0", "Verde");
            dicColor.Add("#6BF9A2", "Verde Claro");
            dicColor.Add("#FF4949", "Vermelho");
            dicColor.Add("#FC6A6A", "Vermelho Claro");
            dicColor.Add("#B26767", "Vinho");
            
            /*dicColor.Add("", "");*/

            return dicColor;
        }

        public bool ValidarClassificacao(Classificacao pClassificacao)
        {
            bool ehValido = true;

            if (string.IsNullOrEmpty(pClassificacao.TxtNome)) {
                ehValido = false;
            }

            return ehValido;
        }

        public void AlterarClassificacao(Classificacao pClassificacao)
        {
            throw new NotImplementedException();
        }
    }
}
