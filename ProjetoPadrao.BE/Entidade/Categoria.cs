using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security;

using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace ProjetoPadrao.BE.Entidade
{
    [Serializable]
    public class Categoria
    {
        [Required]
        [Key]
        /// <summary>
        /// Identificador da categoria.
        /// </summary>
        public long IdCategoria { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name= "Nome da Categoria", ShortName="Categoria", Description="Nome da categoria")]
        /// <summary>
        /// Nome da categoria.
        /// </summary>
        public string TxtNome { get; set; }

        [DataType(DataType.Text)]
        [Display(Name="Comentário", Description="Um pequeno comentário descrevendo a categoria")]
        /// <summary>
        /// Descrição do comentário da categoria.
        /// </summary>
        public string DscComentario { get; set; }
    }
}
