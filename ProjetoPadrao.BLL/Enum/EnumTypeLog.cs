using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjetoPadrao.BLL.Enum
{
    /// <summary>
    /// Enumerador do tipo de log. ENtre eles temos o <c>I</c> de Inserção cujo valor é <c>1</c>, o <c>A</c> de Atualização cujo valor é <c>2</c> e o <c>D</c> de desativação (deletar, excluir) cujo valor é <c>3</c>.
    /// </summary>
    public enum EnumTypeLog : int
    {
        /// <summary>
        /// Inserção (I = 1).
        /// </summary>
        I = 1,
        /// <summary>
        /// Atualização (A = 2).
        /// </summary>
        A = 2,
        /// <summary>
        /// Desativação (deletar, excluir; D = 3).
        /// </summary>
        D = 3
    }
}
