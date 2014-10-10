using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjetoPadrao.DAL.Utility
{
    /// <summary>
    /// Interface da fábrica, definindo a assinatura dos métodos de fávrica que existe.
    /// </summary>
    internal interface IFactory
    {
        object FactoryQuery();

        object FactoryRepository();
    }
}
