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
    public class Avaliacao
    {
        [Required]
        [Key]
        /// <summary>
        /// Identificação da avaliação.
        /// </summary>
        public long IdAvaliacao { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nome da Avaliação", ShortName = "Avaliação", Description = "Nome atribuído à avaliação")]
        /// <summary>
        /// Nome da avaliação.
        /// </summary>
        public string TxtNome { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Comentário", Description = "Comentário explicando a avaliação ou exemplificando")]
        /// <summary>
        /// Comentário da avaliação.
        /// </summary>
        public string DscComentario { get; set; }
    }
}
