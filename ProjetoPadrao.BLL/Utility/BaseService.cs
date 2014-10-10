using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using ProjetoPadrao.BLL.Service;
using ProjetoPadrao.BLL.Enum;

namespace ProjetoPadrao.BLL.Utility
{
    /// <summary>
    /// Classe base que contém a base de todo o projeto de Serviços.
    /// </summary>
    public class BaseService
    {
        #region [ Propriedades de Apoio ]

        private LogService servicoLog = null;
        /// <summary>
        /// Propriedade que armazena os serviços de log.
        /// </summary>
        private LogService ServiceLog {
            get {
                return this.servicoLog = this.servicoLog ?? new LogService();
            }
        }

        #endregion

        #region [ Variáveis ]

        #endregion

        #region [ Métodos Públicos ]

        /// <summary>
        /// Método que define o log de uma determinada ação.
        /// </summary>
        /// <param name="pEntity">Entidade com as alterações.</param>
        /// <param name="pTypeLog">Tipo de log que vai estar sendo gravado.</param>
        protected void DefinirLog(object pEntity, EnumTypeLog pTypeLog) {
            this.DefinirLog(pEntity, new object(), pTypeLog);
        }

        /// <summary>
        /// Método que define o log de uma determinada ação.
        /// </summary>
        /// <param name="pEntityNew">Entidade com as alterações.</param>
        /// <param name="pEntityOld">Entidade antes das alterações.</param>
        /// <param name="pTypeLog">Tipo de log que vai estar sendo gravado.</param>
        protected void DefinirLog(object pEntityNew, object pEntityOld, EnumTypeLog pTypeLog) {

            if (pTypeLog.Equals(EnumTypeLog.I)) {
                this.ServiceLog.RecordLog(pEntityNew);
            }
            else if (pTypeLog.Equals(EnumTypeLog.A)) { 

            }
            else if (pTypeLog.Equals(EnumTypeLog.D)) {
                this.ServiceLog.RecordLog(pEntityNew);
            }

        }

        #endregion

        #region [ Métodos Privados ]

        #endregion
    }
}
