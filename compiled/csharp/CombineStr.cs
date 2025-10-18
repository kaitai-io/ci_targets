// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CombineStr : KaitaiStruct
    {
        public static CombineStr FromFile(string fileName)
        {
            return new CombineStr(new KaitaiStream(fileName));
        }

        public CombineStr(KaitaiStream p__io, KaitaiStruct p__parent = null, CombineStr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_calcBytes = false;
            f_calcOrCalcBytes = false;
            f_eosOrCalc = false;
            f_eosOrCalcBytes = false;
            f_limitOrCalc = false;
            f_limitOrCalcBytes = false;
            f_limitOrEos = false;
            f_strCalc = false;
            f_strCalcBytes = false;
            f_termOrCalc = false;
            f_termOrCalcBytes = false;
            f_termOrEos = false;
            f_termOrLimit = false;
            _read();
        }
        private void _read()
        {
            _strTerm = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(124, false, true, true));
            _strLimit = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(4));
            _strEos = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesFull());
        }
        public byte[] CalcBytes
        {
            get
            {
                if (f_calcBytes)
                    return _calcBytes;
                f_calcBytes = true;
                _calcBytes = (byte[]) (new byte[] { 98, 97, 122 });
                return _calcBytes;
            }
        }
        public string CalcOrCalcBytes
        {
            get
            {
                if (f_calcOrCalcBytes)
                    return _calcOrCalcBytes;
                f_calcOrCalcBytes = true;
                _calcOrCalcBytes = (string) ((false ? StrCalc : StrCalcBytes));
                return _calcOrCalcBytes;
            }
        }
        public string EosOrCalc
        {
            get
            {
                if (f_eosOrCalc)
                    return _eosOrCalc;
                f_eosOrCalc = true;
                _eosOrCalc = (string) ((false ? StrEos : StrCalc));
                return _eosOrCalc;
            }
        }
        public string EosOrCalcBytes
        {
            get
            {
                if (f_eosOrCalcBytes)
                    return _eosOrCalcBytes;
                f_eosOrCalcBytes = true;
                _eosOrCalcBytes = (string) ((true ? StrEos : StrCalcBytes));
                return _eosOrCalcBytes;
            }
        }
        public string LimitOrCalc
        {
            get
            {
                if (f_limitOrCalc)
                    return _limitOrCalc;
                f_limitOrCalc = true;
                _limitOrCalc = (string) ((false ? StrLimit : StrCalc));
                return _limitOrCalc;
            }
        }
        public string LimitOrCalcBytes
        {
            get
            {
                if (f_limitOrCalcBytes)
                    return _limitOrCalcBytes;
                f_limitOrCalcBytes = true;
                _limitOrCalcBytes = (string) ((true ? StrLimit : StrCalcBytes));
                return _limitOrCalcBytes;
            }
        }
        public string LimitOrEos
        {
            get
            {
                if (f_limitOrEos)
                    return _limitOrEos;
                f_limitOrEos = true;
                _limitOrEos = (string) ((true ? StrLimit : StrEos));
                return _limitOrEos;
            }
        }
        public string StrCalc
        {
            get
            {
                if (f_strCalc)
                    return _strCalc;
                f_strCalc = true;
                _strCalc = (string) ("bar");
                return _strCalc;
            }
        }
        public string StrCalcBytes
        {
            get
            {
                if (f_strCalcBytes)
                    return _strCalcBytes;
                f_strCalcBytes = true;
                _strCalcBytes = (string) (System.Text.Encoding.GetEncoding("ASCII").GetString(CalcBytes));
                return _strCalcBytes;
            }
        }
        public string TermOrCalc
        {
            get
            {
                if (f_termOrCalc)
                    return _termOrCalc;
                f_termOrCalc = true;
                _termOrCalc = (string) ((true ? StrTerm : StrCalc));
                return _termOrCalc;
            }
        }
        public string TermOrCalcBytes
        {
            get
            {
                if (f_termOrCalcBytes)
                    return _termOrCalcBytes;
                f_termOrCalcBytes = true;
                _termOrCalcBytes = (string) ((false ? StrTerm : StrCalcBytes));
                return _termOrCalcBytes;
            }
        }
        public string TermOrEos
        {
            get
            {
                if (f_termOrEos)
                    return _termOrEos;
                f_termOrEos = true;
                _termOrEos = (string) ((false ? StrTerm : StrEos));
                return _termOrEos;
            }
        }
        public string TermOrLimit
        {
            get
            {
                if (f_termOrLimit)
                    return _termOrLimit;
                f_termOrLimit = true;
                _termOrLimit = (string) ((true ? StrTerm : StrLimit));
                return _termOrLimit;
            }
        }
        public string StrTerm { get { return _strTerm; } }
        public string StrLimit { get { return _strLimit; } }
        public string StrEos { get { return _strEos; } }
        public CombineStr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_calcBytes;
        private byte[] _calcBytes;
        private bool f_calcOrCalcBytes;
        private string _calcOrCalcBytes;
        private bool f_eosOrCalc;
        private string _eosOrCalc;
        private bool f_eosOrCalcBytes;
        private string _eosOrCalcBytes;
        private bool f_limitOrCalc;
        private string _limitOrCalc;
        private bool f_limitOrCalcBytes;
        private string _limitOrCalcBytes;
        private bool f_limitOrEos;
        private string _limitOrEos;
        private bool f_strCalc;
        private string _strCalc;
        private bool f_strCalcBytes;
        private string _strCalcBytes;
        private bool f_termOrCalc;
        private string _termOrCalc;
        private bool f_termOrCalcBytes;
        private string _termOrCalcBytes;
        private bool f_termOrEos;
        private string _termOrEos;
        private bool f_termOrLimit;
        private string _termOrLimit;
        private string _strTerm;
        private string _strLimit;
        private string _strEos;
        private CombineStr m_root;
        private KaitaiStruct m_parent;
    }
}
