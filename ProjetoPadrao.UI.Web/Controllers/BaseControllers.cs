using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Mvc;

namespace ProjetoPadrao.UI.Web.Controllers
{
    public abstract class BaseControllers : Controller
    {
        #region [ Propriedades ]

        #endregion

        #region [ Variáveis ]

        /// <summary>
        /// Variável que armazena a operação que o usuário está realizando.
        /// </summary>
        public char Operacao {
            get {
                char valor = new char();

                if (base.Session["Operacao"] != null){
                    valor = (char)(base.Session["Operacao"]);
                }
                return valor;
            }
            set {
                base.Session["Operacao"] = value;
            }
        }

        #endregion

        #region [ Métodos Públicos ]

        #endregion

        #region [ Métodos Privados ]

        #endregion
    }
}