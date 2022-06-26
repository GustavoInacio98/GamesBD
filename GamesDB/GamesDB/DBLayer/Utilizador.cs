using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamesDB
{
    class Utilizador
    {
        private String _nome;
        private String _password;
        private String _username;
        private String _telemovel;
        private String _email;
        private String _regiao;

        public string nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public string password
        {
            get { return _password; }
            set { _password = value; }
        }

        public string username
        {
            get { return _username; }
            set { _username = value; }
        }

        public string telemovel
        {
            get { return _telemovel; }
            set { _telemovel = value; }
        }

        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string regiao
        {
            get { return _regiao; }
            set { _regiao = value; }
        }

        public override string ToString()
        {
            return String.Format("{0,-30}\t{1,-30}\t{2,-37}\t{3,-20}", _password, _nome , _email, _telemovel, _regiao);
        }

    }
}
