using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

// Bibliotecas adicionais.
using System.Configuration;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace ProjetoPadrao.DAL.Utility
{
    public class BaseRepositoryMySql
    {
        #region [ Propriedades ]

        /// <summary>
        /// Propriedade privada que retorna a conexão com o banco de dados,
        /// se a conexão existir ele mantem, se não ele cria uma nova conexão.
        /// </summary>
        private MySqlConnection Connection
        {
            get
            {
                if (this.connection == null)
                {
                    string conn;

                    if (ConfigurationManager.ConnectionStrings["connectStringMySql"] != null)
                    {
                        conn = this.connectionString;
                    }
                    else
                    {
                        conn = ConfigurationManager.AppSettings["connectStringMySql"];
                    }

                    this.connection = new MySqlConnection(conn);
                }

                return this.connection;
            }
        }

        #endregion

        #region [ Variáveis ]

        /// <summary>
        /// Variável com o nome da <c>String</c> de conexão ao banco de dados (<c>ConectionString</c>).
        /// </summary>
        private string connectionString = ConfigurationManager.ConnectionStrings["connectStringMySql"].ConnectionString;

        /// <summary>
        /// Variável de conexão.
        /// </summary>
        private MySqlConnection connection = null;

        /// <summary>
        /// Variável que armazena a transação.
        /// </summary>
        private MySqlTransaction transaction = null;

        #endregion

        #region [ Métodos Públicos ]

        #region [ None Resulta Query ]
        /// <summary>
        /// Execucuta a <c>query</c> passada sem ter nenhum retorno.
        /// </summary>
        /// <param name="pQuery">Comando sql.</param>
        protected void NonResultQuery(StringBuilder pQuery)
        {
            this.NonResultQuery(pQuery, new List<MySqlParameter>());
        }

        /// <summary>
        /// Execucuta a <c>query</c> passada sem ter nenhum retorno.
        /// </summary>
        /// <param name="pQuery">Comando sql.</param>
        /// <param name="pLstParameters">Lista de parâmetros.</param>
        protected void NonResultQuery(StringBuilder pQuery, List<MySqlParameter> pLstParameters)
        {
            this.NonResultQuery(pQuery, pLstParameters, CommandType.Text);
        }

        /// <summary>
        /// Execucuta a <c>query</c> passada sem ter nenhum retorno.
        /// </summary>
        /// <param name="pQuery">Comando sql.</param>
        /// <param name="pLstParameters">Lista de parâmetros.</param>
        /// <param name="pType">Tipo do comando sql.</param>
        protected void NonResultQuery(StringBuilder pQuery, List<MySqlParameter> pLstParameters, CommandType pType)
        {
            MySqlCommand command = null;

            try
            {
                this.OpenConnection();

                command = this.Connection.CreateCommand();
                command.CommandText = pQuery.ToString();
                command.CommandType = pType;

                if (pLstParameters.Count > 0)
                {
                    command.Parameters.AddRange(pLstParameters.ToArray());
                }

                command.ExecuteNonQuery();
            }
            catch (Exception) { throw; }
            finally
            {
                this.CloseConnection();

                if (command != null)
                {
                    command.Dispose();
                }
            }
        }
        #endregion

        #region [ Get All]
        /// <summary>
        /// Traz todas as linhas retornada pela consulta.
        /// </summary>
        /// <param name="pQuery">A <c>query</c> que desejo obter todas.</param>
        /// <returns>Tabela toda preenchida.</returns>
        protected DataTable GetAll(StringBuilder pQuery)
        {
            return this.GetAll(pQuery, new List<MySqlParameter>());
        }

        /// <summary>
        /// Traz todas as linhas retornada pela consulta.
        /// </summary>
        /// <param name="pQuery">A <c>query</c> que desejo obter todas.</param>
        /// <param name="pLstParameters">Lista de parâmetros que desejo passar para aquery.</param>
        /// <returns>Tabela toda preenchida.</returns>
        protected DataTable GetAll(StringBuilder pQuery, List<MySqlParameter> pLstParameters)
        {
            return this.GetAll(pQuery, pLstParameters, CommandType.Text);
        }

        /// <summary>
        /// Traz todas as linhas retornada pela consulta.
        /// </summary>
        /// <param name="pQuery">A <c>query</c> que desejo obter todas.</param>
        /// <param name="pLstParameters">Lista de parâmetros que desejo passar para aquery.</param>
        /// <param name="pType">Tipo de comando que quero.</param>
        /// <returns>Tabela toda preenchida.</returns>
        protected DataTable GetAll(StringBuilder pQuery, List<MySqlParameter> pLstParameters, CommandType pType)
        {
            MySqlCommand command = null;
            DataTable dt = new DataTable();

            try
            {
                this.OpenConnection();

                command = this.Connection.CreateCommand();
                command.CommandText = pQuery.ToString();
                command.CommandType = pType;

                if (pLstParameters.Count > 0)
                {
                    command.Parameters.AddRange(pLstParameters.ToArray());
                }

                dt.Load(command.ExecuteReader());
            }
            catch (Exception) { throw; }
            finally
            {
                this.CloseConnection();

                if (command != null)
                {
                    command.Dispose();
                }

            }

            return dt;
        }
        #endregion

        #region [ Get First ]
        /// <summary>
        /// Traz a primeira linha retornada pela consulta.
        /// </summary>
        /// <param name="pQuery">Texto de comando que vai ser executado.</param>
        /// <returns>O primeiro item da consulta, caso haja.</returns>
        protected DataRow GetFirst(StringBuilder pQuery)
        {
            return this.GetFirst(pQuery, new List<MySqlParameter>());
        }

        /// <summary>
        /// Traz a primeira linha retornada pela consulta.
        /// </summary>
        /// <param name="pQuery">Texto de comando que vai ser executado.</param>
        /// <param name="pLstParameters">Lista de parâmetros que vão ser aplicados na consulta.</param>
        /// <returns>O primeiro item da consulta, caso haja.</returns>
        protected DataRow GetFirst(StringBuilder pQuery, List<MySqlParameter> pLstParameters)
        {

            MySqlCommand command = null;
            DataTable dt = new DataTable();

            try
            {
                this.OpenConnection();

                command = this.Connection.CreateCommand();
                command.CommandText = pQuery.ToString();

                if (pLstParameters.Count > 0)
                {
                    command.Parameters.AddRange(pLstParameters.ToArray());
                }

                dt.Load(command.ExecuteReader());
            }
            catch (Exception) { throw; }
            finally
            {
                this.CloseConnection();

                if (command != null)
                {
                    command.Dispose();
                }
            }

            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0];
            }
            else
            {
                return null;
            }
        }
        #endregion

        #region [ Transection ]
        /// <summary>
        /// Abre uma transação.
        /// </summary>
        protected void OpenTransection()
        {
            this.OpenConnection();
            this.transaction = this.Connection.BeginTransaction();
        }

        /// <summary>
        /// Executa uma transação.
        /// </summary>
        /// <param name="pQuery">Texto de comando que vai ser executado.</param>
        protected void ExecuteTransection(StringBuilder pQuery)
        {
            this.ExecuteTransection(pQuery, new List<MySqlParameter>());
        }

        /// <summary>
        /// Executa uma transação.
        /// </summary>
        /// <param name="pQuery">Texto de comando que vai ser executado.</param>
        /// <param name="pLstParameters">Lista de parâmetros que vão ser aplicados na transação.</param>
        protected void ExecuteTransection(StringBuilder pQuery, List<MySqlParameter> pLstParameters)
        {
            MySqlCommand command = null;

            try
            {
                command.Connection = this.Connection;
                command.Transaction = this.transaction;
                command.CommandText = pQuery.ToString();

                if (pLstParameters.Count > 0)
                {
                    command.Parameters.AddRange(pLstParameters.ToArray());
                }

                command.ExecuteNonQuery();
            }
            catch (Exception) { throw; }

        }

        /// <summary>
        /// Comita a transação.
        /// </summary>
        protected void CommitTransection()
        {
            try
            {
                this.transaction.Commit();
            }
            catch (Exception) { throw; }
            finally
            {
                this.CloseConnection();
            }
        }

        /// <summary>
        /// Desfaz tudo o que foi feito durante a transação.
        /// </summary>
        protected void RollbackTransection()
        {
            try
            {
                this.transaction.Rollback();
            }
            catch (Exception) { throw; }
            finally
            {
                this.CloseConnection();
            }
        }
        #endregion

        #region [ Procedure ]
        /// <summary>
        /// Executa uma determinada <c>StoredProcedure</c> passando os parâmetros também.
        /// </summary>
        /// <param name="pProcedureName">Nome do procedimento que vai ser executado.</param>
        protected void ExecuteProcedure(string pProcedureName)
        {
            this.ExecuteProcedure(pProcedureName, new List<MySqlParameter>());
        }

        /// <summary>
        /// Executa uma determinada <c>StoredProcedure</c> passando os parâmetros também.
        /// </summary>
        /// <param name="pProcedureName">Nome do procedimento que vai ser executado.</param>
        /// <param name="pLstParameters">Lista dos parâmetros que são necessários no procedimento.</param>
        protected void ExecuteProcedure(string pProcedureName, List<MySqlParameter> pLstParameters)
        {
            StringBuilder query = new StringBuilder();

            try
            {
                query.AppendLine(pProcedureName);

                this.NonResultQuery(query, pLstParameters, CommandType.StoredProcedure);
            }
            catch (Exception)
            {

                throw;
            }
        }
        #endregion

        #endregion

        #region [ Métodos Privados ]

        /// <summary>
        /// Metodo para abrir a conexão.
        /// </summary>
        private void OpenConnection()
        {
            this.connection = new MySqlConnection(this.connectionString);
            this.connection.Open();
        }

        /// <summary>
        ///  Metodo que fecha a conexão.
        /// </summary>
        private void CloseConnection()
        {
            this.connection.Close();
            this.connection.Dispose();
        }

        #endregion
    }
}
