using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoPadrao.UI.Web.Controllers
{
    public class AlertasController : BaseControllers
    {
        /// <summary>
        /// Ação que retorna a página de manutenção.
        /// </summary>
        /// <returns></returns>
        public ActionResult Manutencao() {
            return View("ManutencaoView");
        }

        /// <summary>
        /// Ação que retorna a página de usuário expirou.
        /// </summary>
        /// <returns></returns>
        public ActionResult UsuarioExpirou() {
            return View("UsuarioExpirouView");
        }
    }
}
