using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using ProjetoPadrao.BE.Entidade;
using ProjetoPadrao.BLL.Service;
using ProjetoPadrao.UI.Web.Extension;

namespace ProjetoPadrao.UI.Web.Controllers
{
    public class ClassificacaoController : BaseControllers
    {
        #region [ Propriedades de Apoio ]

        private ClassificacaoService servicoClassificacao = null;
        /// <summary>
        /// Serviços de Classificação.
        /// </summary>
        private ClassificacaoService ServicoClassificacao {
            get {
                return this.servicoClassificacao = this.servicoClassificacao ?? new ClassificacaoService();
            }
        }

        #endregion

        #region [ Ações ]

        /// <summary>
        /// Ação de teste....BRUM.
        /// </summary>
        /// <returns></returns>
        public ActionResult Teste() {

            Classificacao classificacao = new Classificacao();

            classificacao.TxtNome = "Menor que 18 anos";
            classificacao.IdClassificacao = 1;
            classificacao.DscComentario = "Esta classificação é para definir uma faixa hetária de utilização de um determinado conteúdo do livro.";
            classificacao.CodCor = "#F00";
            classificacao.TxtCor = "Vermelho";

            ViewBag.classificacao = classificacao.TxtNome;
            ViewBag.HoraAtual = DateTime.Now.ToShortTimeString();
            ViewBag.DataAtual = DateTime.Now.ToShortDateString();

            return View(classificacao);
        }

        /// <summary>
        /// Ação que carrega a tela index, que o padrão é uma consulta total.
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View(this.ServicoClassificacao.PreencherDropdownClassificalao(new Classificacao()));
        }

        /// <summary>
        /// Ação de editar uma classificação.
        /// </summary>
        /// <param name="id">Identificação da classificação.</param>
        /// <returns>Classificação preenchida.</returns>
        [HttpGet]
        public ActionResult Edit(long id){

            ViewBag.Mensagem = "Alterar Classificação";
            ViewBag.LegendaFormulario = "Informações Alteração Classificação";
            ViewBag.TitleButtonSave = "Salvar alterações na classfiicação";

            Classificacao classificacao = this.ServicoClassificacao.ObterClassificacao(new Classificacao() { IdClassificacao = id });

            classificacao.ListaCor = this.ServicoClassificacao.PreencherDropdownCor();

            return View("Maintain", classificacao);
        }

        [HttpPost]
        public ActionResult Edit(Classificacao pClassificacao)
        {
            if (base.ModelState.IsValid){

                try
                {
                    pClassificacao.TxtCor = this.ServicoClassificacao.PreencherDropdownCor()[pClassificacao.CodCor];

                    this.ServicoClassificacao.AlterarClassificacao(pClassificacao);

                    return base.RedirectToAction("Index");
                }
                catch {
                    return View("Erro");
                }
            }
            else {
                return base.RedirectToActionPermanent("Edit", new { id = pClassificacao.IdClassificacao });
            }   
        }

        /// <summary>
        /// Criar uma nova classificação.
        /// </summary>
        /// <returns>View.</returns>
        [HttpGet]
        public ActionResult Creat()
        {
            ViewBag.Mensagem = "Inserir Classificação";
            ViewBag.LegendaFormulario = "Informações Inserção Classificação";
            ViewBag.TitleButtonSave = "Salvar uma nova classificação";

            return View("Maintain", new Classificacao() { ListaCor = this.ServicoClassificacao.PreencherDropdownCor() });
        }

        [HttpPost]
        public ActionResult Creat(Classificacao model) {

            //if (this.ServicoClassificacao.ValidarClassificacao(pClassificacao))
            if(!ModelState.IsValid)
            {
                ViewBag.Mensagem = "Alterar Classificação";
                ViewBag.LegendaFormulario = "Informações Alteração Classificação";
                ViewBag.TitleButtonSave = "Salvar alterações na classfiicação";

                Classificacao classificacao = model ?? new Classificacao();

                classificacao.ListaCor = this.ServicoClassificacao.PreencherDropdownCor();

                return View("Maintain", classificacao);
            }
            else
            {
                return View("Index", this.ServicoClassificacao.PreencherDropdownClassificalao(new Classificacao()));
            }
        }

        #endregion
    }
}
