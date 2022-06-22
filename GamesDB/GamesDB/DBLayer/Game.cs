using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamesDB
{
    class Game
    {
        private String _nome;
        private String _jogoid;
        private String _categoria;
        private String _rating;
        private String _datalancamento;
        private String _especificacoes;

        public string nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public string jogoid
        {
            get { return _jogoid; }
            set { _jogoid = value; }
        }

        public string categoria
        {
            get { return _categoria; }
            set { _categoria = value; }
        }
        public string rating
        {
            get { return _rating; }
            set { _rating = value; }
        }

        public string datalancamento
        {
            get { return _datalancamento; }
            set { _datalancamento = value; }
        }

        public string especificacoes
        {
            get { return _especificacoes; }
            set { _especificacoes = value; }
        }

        public override string ToString()
        {
            return String.Format("{0,-30}\t{1,-30}\t{2,-37}\t{3,-20}", _nome, _jogoid, _categoria, _rating, _datalancamento, _especificacoes);
        }

    }
}
