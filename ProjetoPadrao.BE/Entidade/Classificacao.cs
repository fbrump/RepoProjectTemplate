using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security;

using System.ComponentModel.DataAnnotations;
using System.Globalization;


namespace ProjetoPadrao.BE.Entidade
{
    /// <summary>
    /// Entidade Classificação.
    /// </summary>
    [Serializable]
    public class Classificacao
    {
        /// <summary>
        /// Identificador da classificação.
        /// </summary>
        [Required]
        [Key]
        public long IdClassificacao { get; set; }

        /// <summary>
        /// Nome da classificação.
        /// </summary>
        [Required(ErrorMessage="É obrigatório o preenchimento do nome")]
        [DataType(DataType.Text)]
        [Display(Name="Nome da classificação", ShortName="Nome", Description="Nome que vai estar atribuindo para a classificação")]
        public string TxtNome { get; set; }

        /// <summary>
        /// Comentário sobre a classificação.
        /// </summary>
        [Required(ErrorMessage="É obrigatório o preenchimento do comentário")]
        [DataType(DataType.Text)]
        [Display( Name="Comentário", Description="Um pequeno comentário sobre a classificação, exemplificando ou clariando o entendimento da mesma")]
        public string DscComentario { get; set; }

        /// <summary>
        /// Código hexadecimal da cor.
        /// </summary>
        [DataType(DataType.Text)]
        [Display(Name="Código da cor (hexadecimal)", ShortName="Código da cor")]
        public string CodCor { get; set; }

        /// <summary>
        /// Nome da cor.
        /// </summary>
        [DataType(DataType.Text)]
        [Display(Name="Nome da cor", Description="Nome da cor, por exemplo: vermelhor, amarelo, etc.")]
        public string TxtCor { get; set; }

        #region [ Propriedades de Apoio ]

        public IDictionary<string, string> ListaCor { get; set; }

        #endregion
    }
}
