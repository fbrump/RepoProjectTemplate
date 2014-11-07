using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Mvc;

namespace ProjetoPadrao.UI.Web.Extension
{
    public static class DropdownExtension
    {
        /// <summary>
        /// Converte um Modelo em <c>SelectList</c> para apresentação na dropdownlist do Razor.
        /// </summary>
        /// <param name="pModel">Dictonary</param>
        /// <returns>Lista para preenchimento da dropdow na View.</returns>
        public static SelectList ConvertModelToDropdownlistCor(this Dictionary<string, string> pModel) {

            SelectList lstDropdown = new SelectList(pModel, "Key","Value","-1");

            return lstDropdown;
        }
    }
}